#------------------------------------------------------------------------------
#          Harvard University Atmospheric Chemistry Modeling Group            !
#------------------------------------------------------------------------------
#BOP
#
# !INCLUDE: GeosFpDriver.input
#
# !DESCRIPTION: Specifies the input directory and the locations of the 
# GEOS-FP netCDF data files that are required to produce the GEOS-Chem 
# "A1", "A3", and "I3" files.
#\\
#\\
# !REMARKS:
# For each GMAO data file type we must specify:
# - GMAO data file template name (one line)
# - GMAO data fields to be read from this file (one comma-separated, line)
#
# If you wish to omit all fields from a given file type, you may
# specify "none" for the template name and fields list.
#
# End all directory path names with slashes!
#
# !REVISION HISTORY: 
#  26 Oct 2011 - R. Yantosca - Initial version, based on MerraDriver.input
#  03 Jan 2012 - R. Yantosca - Added fields for I3 output file
#  05 Jan 2012 - R. Yantosca - Added fields for A1 output file
#  05 Jan 2012 - R. Yantosca - Now use a single netCDF template file
#  10 Jan 2012 - R. Yantosca - Added fields for A3 output file
#  13 Jan 2012 - R. Yantosca - Now point file paths on /as/data/geos-rw/
#  20 Jan 2012 - R. Yantosca - Now specify temporary & data directories
#  16 Feb 2012 - R. Yantosca - Fix SEAC4RS grid offset for 20-50N (not 40N)
#  20 Jun 2012 - R. Yantosca - Updated for new SEAC4RS grid (China)
#  25 Jul 2013 - R. Yantosca - Updated for modified SEAC4RS mission (Houston)
#  19 Sep 2013 - R. Yantosca - Changed "GEOS572" to "GEOSFP" in filenames
#  19 Sep 2013 - R. Yantosca - Added inputs for nested Europe grid
#  19 Sep 2013 - R. Yantosca - Removed reference to tavg3_3d_rad_Nv collection
#  20 Sep 2013 - R. Yantosca - Removed CFCU from the list
#  08 Oct 2013 - R. Yantosca - Added output for nested SE Asia grid (SE)
#  09 Oct 2013 - R. Yantosca - Added output for native wind speed
#  16 Oct 2013 - R. Yantosca - Added TO3 as a field
#

==> Turn on debug print output?
F

==> const_2d_asm_Nx
GEOS.fp.asm.const_2d_asm_Nx.00000000_0000.V01.nc4
FRLAKE,FRLAND,FRLANDICE,FROCEAN,PHIS
F

==> tavg1_2d_flx_Nx
GEOS.fp.asm.tavg1_2d_flx_Nx.YYYYMMDD_hhmm.V01.nc4
EFLUX,EVAP,FRSEAICE,HFLUX,PBLH,PRECANV,PRECCON,PRECLSC,PRECSNO,PRECTOT,USTAR,Z0M

==> tavg1_2d_lnd_Nx
GEOS.fp.asm.tavg1_2d_lnd_Nx.YYYYMMDD_hhmm.V01.nc4
FRSNO,GRN,GWETROOT,GWETTOP,LAI,PARDF,PARDR,SNODP,SNOMAS

==> tavg1_2d_rad_Nx
GEOS.fp.asm.tavg1_2d_rad_Nx.YYYYMMDD_hhmm.V01.nc4
ALBEDO,CLDTOT,LWGNT,LWTUP,SWGDN

==> tavg1_2d_slv_Nx
GEOS.fp.asm.tavg1_2d_slv_Nx.YYYYMMDD_hhmm.V01.nc4
QV2M,SLP,TROPPT,TS,T2M,U10M,V10M,T10M,Q850,TO3

==> tavg3_3d_asm_Nv
GEOS.fp.asm.tavg3_3d_asm_Nv.YYYYMMDD_hhmm.V01.nc4
OMEGA,U,V

==> tavg3_3d_cld_Nv
GEOS.fp.asm.tavg3_3d_cld_Nv.YYYYMMDD_hhmm.V01.nc4
A3cld: CFAN,CFLS,CLOUD,QCCU,QIAN,QILS,QI,QLAN,QLLS,QL,TAUCLI,TAUCLW,OPTDEPTH
A3dyn: DTRAIN,RH

==> tavg3_3d_mst_Ne
GEOS.fp.asm.tavg3_3d_mst_Ne.YYYYMMDD_hhmm.V01.nc4
CMFMC,PFICU,PFILSAN,PFLCU,PFLLSAN

==> tavg3_3d_mst_Nv
GEOS.fp.asm.tavg3_3d_mst_Nv.YYYYMMDD_hhmm.V01.nc4
DQRCU,DQRLSAN,REEVAPCN,REEVAPLSAN

==> inst3_3d_asm_Nv
GEOS.fp.asm.inst3_3d_asm_Nv.YYYYMMDD_hhmm.V01.nc4
PS,PV,QV,T

==> Local Raw Data Path
/as/priv/ftp/gmao/gmao/

==> Nested CH output
F
GEOSFP.YYYYMMDD.%%%%%%.025x03125.CH.nc
/as/tmp/all/tmp/bmy/GEOS_FP/
/as/data/geos-rw/GEOS_0.25x0.3125_CH.d/GEOS_FP/YYYY/MM/
  801  421  1025 581   # China grid

==> Nested EU output
F
GEOSFP.YYYYMMDD.%%%%%%.025x03125.EU.nc
/as/tmp/all/tmp/bmy/GEOS_FP/
/mnt/gcgrid-rw/GEOS_0.25x0.3125/GEOS_0.25x0.3125_EU.d/GEOS_FP/YYYY/MM/
  161 400 385 601      # NOTE: Need correct indices

==> Nested NA output
T
GEOSFP.YYYYMMDD.%%%%%%.025x03125.NA.nc
/as/tmp/all/tmp/bmy/GEOS_FP/
/mnt/gcgrid-rw/GEOS_0.25x0.3125/GEOS_0.25x0.3125_NA.d/GEOS_FP/YYYY/MM/
  161 400 385 601

==> Nested SE output
F
GEOSFP.YYYYMMDD.%%%%%%.025x03125.SE.nc
/as/tmp/all/tmp/bmy/GEOS_FP/
/mnt/gcgrid-rw/GEOS_0.25x0.3125/GEOS_0.25x0.3125_SE.d/GEOS_FP/YYYY/MM/
  817 321 993 481

==> 2 x 2.5 output
T
GEOSFP.YYYYMMDD.%%%%%%.2x25.nc
/as/tmp/all/tmp/bmy/GEOS_FP/
/as/data/geos-rw/GEOS_2x2.5.d/GEOS_FP/YYYY/MM/

==> 4 x 5 output 
T
GEOSFP.YYYYMMDD.%%%%%%.4x5.nc
/as/tmp/all/tmp/bmy/GEOS_FP/
/mnt/gcgrid-rw/GEOS_4x5/GEOS_FP/YYYY/MM/

==> Native-resolution wind speed output
F
GEOSFP.YYYYMMDD.SPEED.025x03125.nc
/as/tmp/all/tmp/bmy/GEOS_FP/
/mnt/gcgrid-rw/GEOS_0.25x0.3125.d/GEOS_FP/YYYY/MM/

==> Mapping Weight Files
weights_025x03125_to_2x25.txt
weights_025x03125_to_4x5.txt

==> Template Files
GeosFpTemplateFile.nc
#
#EOP
#------------------------------------------------------------------------------
