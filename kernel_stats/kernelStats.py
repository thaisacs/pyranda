from mpi4py import MPI
import time

class kernelStats:
    def __init__(self, stop_in = 0, early_stop = False):
        self.PRINT_INIT = 1
        self.PRINT_STATS = 2
        self.PRINT_EXIT = 3
        self.PRINT_AVG = 4
        self.PRINT_BETA = 5

        self.stop_in = stop_in
        self.current_iteration = 0
        self.init_time = 0
        self.begin_time = 0
        self.end_time = 0
        self.pi_sum = 0
        self. early_stop = early_stop

    def getCurrentTime(self):
        return time.time()

    def initTimestep(self):
        self.current_iteration = 0
        self.init_time = self.getCurrentTime()

    def exit(self):
        rank = MPI.COMM_WORLD.Get_rank()

        if(self.early_stop and self.current_iteration == self.stop_in):
            self.exitTimestep()
            MPI.COMM_WORLD.Abort()

    def exitTimestep(self):
        current_time = self.getCurrentTime()

        if(self.current_iteration > 0):
            self.print_timestep(self.PRINT_AVG, 0)
            self.print_timestep(self.PRINT_BETA, current_time);

        self.print_timestep(self.PRINT_EXIT, current_time);

    def beginTimestep(self):
        if(self.current_iteration == 0):
            current_time = self.getCurrentTime()

            self.print_timestep(self.PRINT_INIT, current_time);

            if(self.stop_in == 0):
                self.exit()

        self.current_iteration += 1
        self.begin_time = self.getCurrentTime();

    def endTimestep(self):
        self.end_time = self.getCurrentTime()
        self.print_timestep(self.PRINT_STATS, self.end_time);
        self.pi_sum += self.end_time - self.begin_time
        self.exit()

    def print_timestep(self, ptype, collected_time):
        rank = MPI.COMM_WORLD.Get_rank()

        if(ptype == self.PRINT_INIT):
           print("[MO866] Init time,{},{}".format(rank, collected_time - self.init_time))
        elif(ptype == self.PRINT_STATS):
           print("[MO833] Paramount Iteration,{},{},{},{}".format(rank, self.current_iteration, collected_time - self.begin_time, collected_time - self.init_time))
        elif(ptype == self.PRINT_EXIT):
           print("[MO833] Total time,{},{}".format(rank,collected_time - self.init_time))
        elif(ptype == self.PRINT_AVG):
           print("[MO833] PI avg,{},{},{}".format(rank,self.pi_sum/self.current_iteration, self.current_iteration))
        elif(ptype == self.PRINT_BETA):
           print("[MO833] Beta,{},{}".format(rank,(collected_time-self.end_time)/self.pi_sum))
