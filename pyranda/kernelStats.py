from mpi4py import MPI
import time

class kernelStats:
    def __init__(self, stop_in = 0, early_stop = False):
        self.PRINT_INIT = 1
        self.PRINT_STATS = 2
        self.stop_in = stop_in
        self.current_iteration = 0
        self.init_time = 0
        self.begin_time = 0
        self. early_stop = early_stop

    def getCurrentTime(self):
        return time.time()

    def initTimestep(self):
        self.current_iteration = 0
        self.init_time = self.getCurrentTime()

    def beginTimestep(self):
        if(self.current_iteration == 0):
            current_time = self.getCurrentTime()
            self.print_timestep(self.PRINT_INIT, current_time);

        self.current_iteration += 1
        self.begin_time = self.getCurrentTime();

    def endTimestep(self):
        self.end_time = self.getCurrentTime()
        self.print_timestep(self.PRINT_STATS, self.end_time);

        if(self.early_stop and self.current_iteration == self.stop_in):
            MPI.MPI_Abort()

    def print_timestep(self, ptype, collected_time):
        rank = MPI.COMM_WORLD.Get_rank()
        if(rank == 0):
            if(ptype == self.PRINT_INIT):
               print("Init time,{}".format(collected_time - self.init_time))
            elif(ptype == self.PRINT_STATS):
               print("Iteration,{},{},{}".format(self.current_iteration, collected_time - self.init_time, collected_time - self.begin_time))
