******************************
*** Child vaccination ********
******************************   
*c_measles	child			Child received measles1/MMR1 vaccination
		gen c_measles  = inlist(h9,1,2,3)   if !inlist(h9,8,9,.)  

		
		gen c_polio0 = inlist(h0,1,2,3)  if !inlist(h0,8,9,.) 
*c_polio1	child			Child received polio1/OPV1 vaccination
		gen c_polio1 = inlist(h4,1,2,3)  if !inlist(h4,8,9,.) 
		
*c_polio2	child			Child received polio2/OPV2 vaccination				
		gen c_polio2 = inlist(h6,1,2,3)  if !inlist(h6,8,9,.) 
		
*c_polio3	child			Child received polio3/OPV3 vaccination				
		gen c_polio3 = inlist(h8,1,2,3)  if !inlist(h8,8,9,.) 
		
if !inlist(name,"Armenia2010", "Benin2011", "Congorep2011", "Egypt2014", "Gabon2012", "DominicanRepublic2013", "Mali2012","Rwanda2010","Tajikistan2012"){		
*c_dpt1	child	Child received DPT1/Pentavalent 1 vaccination	
		gen c_dpt1  = inlist(h3,1,2,3)  if !inlist(h3,8,9,.)  
		
*c_dpt2	child			Child received DPT2/Pentavalent2 vaccination				
		gen c_dpt2  = inlist(h5,1,2,3)  if !inlist(h5,8,9,.)  
		
*c_dpt3	child			Child received DPT3/Pentavalent3 vaccination				
		gen c_dpt3  = inlist(h7,1,2,3)  if !inlist(h7,8,9,.)  
}
		
if inlist(name,"Armenia2010"){
		gen c_dpt1 = .
		replace c_dpt1 = 1 if (h3==1 | h3==2 | h3==3|inrange(pen1,1,3)) 
		replace c_dpt1 = 0 if h3==0 & pen1==0 

		gen c_dpt2 = .
		replace c_dpt2 = 1 if (h5==1 | h5==2 | h5==3|inrange(pen2,1,3)) 
		replace c_dpt2 = 0 if h5==0 & pen2==0 
		
		gen c_dpt3 = .
		replace c_dpt3 = 1 if (h7==1 | h7==2 | h7==3|inrange(pen3,1,3)) 
		replace c_dpt3 = 0 if h7==0 & pen3==0 
}

if inlist(name,"Benin2011"){
		gen c_dpt1 = .
		replace c_dpt1 = 1 if (h3==1 | h3==2 | h3==3|inrange(spev1,1,3)) 
		replace c_dpt1 = 0 if h3==0 & spev1==0 

		gen c_dpt2 = .
		replace c_dpt2 = 1 if (h5==1 | h5==2 | h5==3|inrange(spev2,1,3)) 
		replace c_dpt2 = 0 if h5==0 & spev2==0 
		
		gen c_dpt3 = .
		replace c_dpt3 = 1 if (h7==1 | h7==2 | h7==3|inrange(spev3,1,3)) 
		replace c_dpt3 = 0 if h7==0 & spev3==0 
}					
									
if inlist(name,"Congorep2011"){
		gen c_dpt1 = .
		replace c_dpt1 = 1 if (h3==1 | h3==2 | h3==3|inrange(s506t1,1,3)) 
		replace c_dpt1 = 0 if h3==0 & s506t1==0 

		gen c_dpt2 = .
		replace c_dpt2 = 1 if (h5==1 | h5==2 | h5==3|inrange(s506t2,1,3)) 
		replace c_dpt2 = 0 if h5==0 & s506t2==0 
		
		gen c_dpt3 = .
		replace c_dpt3 = 1 if (h7==1 | h7==2 | h7==3|inrange(s506t3,1,3)) 
		replace c_dpt3 = 0 if h7==0 & s506t3==0 
}							
	
if inlist(name,"Egypt2014") {
		gen c_dpt1 = .
		replace c_dpt1 = 1 if (h3==1 | h3==2 | h3==3|inrange(spvt1,1,3)) 
		replace c_dpt1 = 0 if h3==0 & spvt1==0 
		
		gen c_dpt2 = .
		replace c_dpt2 = 1 if (h5==1 | h5==2 | h5==3|inrange(spvt2,1,3)) 
		replace c_dpt2 = 0 if h5==0 & spvt2==0 
		
		gen c_dpt3 = .
		replace c_dpt3 = 1 if (h7==1 | h7==2 | h7==3|inrange(spvt3,1,3)) 
		replace c_dpt3 = 0 if h7==0 & spvt3==0 
}	

if inlist(name,"Gabon2012"){
		gen c_dpt1 = .
		replace c_dpt1 = 1 if (h3==1 | h3==2 | h3==3|inrange(s506e1,1,3)) 
		replace c_dpt1 = 0 if h3==0 & s506e1==0 

		gen c_dpt2 = .
		replace c_dpt2 = 1 if (h5==1 | h5==2 | h5==3|inrange(s506e2 ,1,3)) 
		replace c_dpt2 = 0 if h5==0 & s506e2 ==0 
		
		gen c_dpt3 = .
		replace c_dpt3 = 1 if (h7==1 | h7==2 | h7==3|inrange(s506e3,1,3)) 
		replace c_dpt3 = 0 if h7==0 & s506e3 ==0 
}	

if inlist(name,"DominicanRepublic2013"){
		gen c_dpt1 = .
		replace c_dpt1 = 1 if (h3==1 | h3==2 | h3==3 |inrange(pt1,1,3)) 
		replace c_dpt1 = 0 if h3==0 & pt1 ==0 

		gen c_dpt2 = .
		replace c_dpt2 = 1 if (h5==1 | h3==2 | h5==3|inrange(pt2,1,3)) 
		replace c_dpt2 = 0 if h5==0 & pt2==0 
		
		gen c_dpt3 = .
		replace c_dpt3 = 1 if (h7==1 | h3==2 | h7==3|inrange(pt3,1,3)) 
		replace c_dpt3 = 0 if h7==0 & pt3==0 
}	
					
if inlist(name,"Mali2012"){
		gen c_dpt1 = .
		replace c_dpt1 = 1 if (h3==1 | h3==2 | h3==3 |inrange(vacp1,1,3)) 
		replace c_dpt1 = 0 if h3==0 & vacp1 ==0 

		gen c_dpt2 = .
		replace c_dpt2 = 1 if (h5==1 | h3==2 | h5==3|inrange(vacp2,1,3)) 
		replace c_dpt2 = 0 if h5==0 & vacp2==0 
		
		gen c_dpt3 = .
		replace c_dpt3 = 1 if (h7==1 | h3==2 | h7==3|inrange(vacp3,1,3)) 
		replace c_dpt3 = 0 if h7==0 & vacp3==0 
}	

if inlist(name,"Rwanda2010"){
		gen c_dpt1 = .
		replace c_dpt1 = 1 if (h3==1 | h3==2 | h3==3 |inrange(s506p1,1,3)) 
		replace c_dpt1 = 0 if h3==0 & s506p1 ==0 

		gen c_dpt2 = .
		replace c_dpt2 = 1 if (h5==1 | h3==2 | h5==3|inrange(s506p2,1,3)) 
		replace c_dpt2 = 0 if h5==0 & s506p2==0 
		
		gen c_dpt3 = .
		replace c_dpt3 = 1 if (h7==1 | h3==2 | h7==3|inrange(s506p3,1,3)) 
		replace c_dpt3 = 0 if h7==0 & s506p3==0 
}
	
if inlist(name,"Tajikistan2012"){
		gen c_dpt1 = .
		replace c_dpt1 = 1 if (h3==1 | h3==2 | h3==3 |inrange(svt1,1,3)) 
		replace c_dpt1 = 0 if h3==0 & svt1 ==0 

		gen c_dpt2 = .
		replace c_dpt2 = 1 if (h5==1 | h3==2 | h5==3|inrange(svt2,1,3)) 
		replace c_dpt2 = 0 if h5==0 & svt2==0 
		
		gen c_dpt3 = .
		replace c_dpt3 = 1 if (h7==1 | h3==2 | h7==3|inrange(svt3,1,3)) 
		replace c_dpt3 = 0 if h7==0 & svt3==0 
}
																
*c_bcg	child			Child received BCG vaccination
		gen c_bcg  = inlist(h2,1,2,3)  if !inlist(h2,8,9,.)  
		
*c_fullimm	child			Child fully vaccinated						
		gen c_fullimm =.  										/*Note: polio0 is not part of allvacc- see DHS final report*/
		replace c_fullimm =1 if (c_measles==1 & c_dpt1 ==1 & c_dpt2 ==1 & c_dpt3 ==1 & c_bcg ==1 & c_polio1 ==1 & c_polio2 ==1 & c_polio3 ==1)  
		replace c_fullimm =0 if (c_measles==0 | c_dpt1 ==0 | c_dpt2 ==0 | c_dpt3 ==0 | c_bcg ==0 | c_polio1 ==0 | c_polio2 ==0 | c_polio3 ==0)  
		replace c_fullimm =. if b5 ==0  
