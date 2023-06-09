/*******************************************************************
*
*  DESCRIPTION: Simulator::registerNewAtomics()
*
*  AUTHOR: Amir Barylko & Jorge Beyoglonian 
*
*  EMAIL: mailto://amir@dc.uba.ar
*         mailto://jbeyoglo@dc.uba.ar
*
*  DATE: 27/6/1998
*
*******************************************************************/

#include "modeladm.h" 
#include "mainsimu.h"

#include "lqndistribute.h"
#include "lqnentry.h"
#include "lqngather.h"
#include "lqnprocessor.h"
#include "lqnqueue.h"


void MainSimulator::registerNewAtomics()
{
  SingleModelAdm::Instance().registerAtomic( NewAtomicFunction< LqnDistribute >(), "LqnDistribute" );
  SingleModelAdm::Instance().registerAtomic( NewAtomicFunction< LqnEntry >(), "LqnEntry" );
  SingleModelAdm::Instance().registerAtomic( NewAtomicFunction< LqnGather >(), "LqnGather" );
  SingleModelAdm::Instance().registerAtomic( NewAtomicFunction< LqnProcessor >(), "LqnProcessor" );
  SingleModelAdm::Instance().registerAtomic( NewAtomicFunction< LqnQueue >(), "LqnQueue" );
}
