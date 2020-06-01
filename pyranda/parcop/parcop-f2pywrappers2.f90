!     -*- f90 -*-
!     This file is autogenerated with f2py (version:2)
!     It contains Fortran 90 wrappers to fortran functions.

      subroutine f2pywrap_parcop_setup_mesh_x3 (patch, level, x1, x2, x3&
     &, meshper, f2py_x1_d0, f2py_x1_d1, f2py_x1_d2, f2py_x2_d0, f2py_x2&
     &_d1, f2py_x2_d2, f2py_x3_d0, f2py_x3_d1, f2py_x3_d2)
      use parcop, only : setup_mesh_x3
      integer patch
      integer level
      logical meshper
      integer f2py_x1_d0
      integer f2py_x1_d1
      integer f2py_x1_d2
      integer f2py_x2_d0
      integer f2py_x2_d1
      integer f2py_x2_d2
      integer f2py_x3_d0
      integer f2py_x3_d1
      integer f2py_x3_d2
      real(kind=8) x1(f2py_x1_d0,f2py_x1_d1,f2py_x1_d2)
      real(kind=8) x2(f2py_x2_d0,f2py_x2_d1,f2py_x2_d2)
      real(kind=8) x3(f2py_x3_d0,f2py_x3_d1,f2py_x3_d2)
      call setup_mesh_x3(patch, level, x1, x2, x3, meshper)
      end subroutine f2pywrap_parcop_setup_mesh_x3
      
      subroutine f2pyinitparcop(f2pysetupfunc)
      use parcop, only : setup
      use parcop, only : setup_mesh
      use parcop, only : getvar
      use parcop, only : xgrid
      use parcop, only : ygrid
      use parcop, only : zgrid
      use parcop, only : dxgrid
      use parcop, only : dygrid
      use parcop, only : dzgrid
      use parcop, only : mesh_getcellvol
      use parcop, only : mesh_getgridlen
      use parcop, only : set_patch
      use parcop, only : divergence
      use parcop, only : ddx
      use parcop, only : ddy
      use parcop, only : ddz
      use parcop, only : dd4x
      use parcop, only : dd4y
      use parcop, only : dd4z
      use parcop, only : plaplacian
      use parcop, only : pring
      use parcop, only : pringv
      use parcop, only : sfilter
      use parcop, only : gfilter
      use parcop, only : gfilterdir
      use parcop, only : grads
      use parcop, only : commfrompy
      use parcop, only : commx
      use parcop, only : commy
      use parcop, only : commz
      use parcop, only : commxy
      use parcop, only : commxz
      use parcop, only : commyz
      use parcop, only : tbl_get_rands
      use parcop, only : tbl_filter
      interface 
      subroutine f2pywrap_parcop_setup_mesh_x3 (patch, level, x1, x2, x3&
     &, meshper, f2py_x1_d0, f2py_x1_d1, f2py_x1_d2, f2py_x2_d0, f2py_x2&
     &_d1, f2py_x2_d2, f2py_x3_d0, f2py_x3_d1, f2py_x3_d2)
      integer patch
      integer level
      logical meshper
      integer f2py_x1_d0
      integer f2py_x1_d1
      integer f2py_x1_d2
      integer f2py_x2_d0
      integer f2py_x2_d1
      integer f2py_x2_d2
      integer f2py_x3_d0
      integer f2py_x3_d1
      integer f2py_x3_d2
      real(kind=8) x1(f2py_x1_d0,f2py_x1_d1,f2py_x1_d2)
      real(kind=8) x2(f2py_x2_d0,f2py_x2_d1,f2py_x2_d2)
      real(kind=8) x3(f2py_x3_d0,f2py_x3_d1,f2py_x3_d2)
      end subroutine f2pywrap_parcop_setup_mesh_x3
      end interface
      external f2pysetupfunc
      call f2pysetupfunc(setup,setup_mesh,f2pywrap_parcop_setup_mesh_x3,&
     &getvar,xgrid,ygrid,zgrid,dxgrid,dygrid,dzgrid,mesh_getcellvol,mesh&
     &_getgridlen,set_patch,divergence,ddx,ddy,ddz,dd4x,dd4y,dd4z,plapla&
     &cian,pring,pringv,sfilter,gfilter,gfilterdir,grads,commfrompy,comm&
     &x,commy,commz,commxy,commxz,commyz,tbl_get_rands,tbl_filter)
      end subroutine f2pyinitparcop


