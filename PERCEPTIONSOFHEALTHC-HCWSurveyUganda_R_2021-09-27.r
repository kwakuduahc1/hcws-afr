#Clear existing data and graphics
rm(list=ls())
graphics.off()
#Load Hmisc library
library(Hmisc)
#Read Data
data=read.csv('PERCEPTIONSOFHEALTHC-HCWSurveyUganda_DATA_2021-09-27_1059.csv')
#Setting Labels

label(data$record_id)="Record ID"
label(data$age)="Age"
label(data$gender)="Gender:"
label(data$role)="Role:"
label(data$role_other)="If Other, please specify:"
label(data$healthtype)="Type of Healthcare service:"
label(data$healthtype_2)="Is health facility:"
label(data$healthtype_3)="Location of health facility (District): "
label(data$screening)="Screening question: do you provide direct care to patients? "
label(data$screening_2)="If Yes, how frequently do you provide direct patient care?  "
label(data$jobrole)="Type of job role"
label(data$marital)="Current marital status"
label(data$child_dependants)="Number of children living in the home, if any, under the age of 17yrs "
label(data$adult_dependants)="Do you have caring responsibilities for any adults, including those with disabilities or those over the age of 70 years?"
label(data$experience_1)="1.	In a clinical setting, did you personally care for patients with suspected or confirmed infection caused by a novel respiratory pathogen for example, SARS (2002), MERS Co-V (2012), H1N1 (2009)?"
label(data$experience_2)="2.	In a clinical setting, did you personally care for patients with suspected or confirmed infection of  other epidemic e.g. Ebola, Marburg, cholera?"
label(data$experience_3)="3.	Has a patient with suspected or confirmed COVID-19 attended the healthy facility in which you work?"
label(data$experience_4)="4.	Have you cared for a patient with suspected or confirmed COVID-19 infections?"
label(data$contacttype)="If Yes to 4 above, what type of contact did you have with a suspected/confirmed Covid-19 case?    "
label(data$contacttype_2)="  If Close contact, Did this contact include an aerosol generating procedure? For example tracheal intubation, non-invasive ventilation, bronchoscopy, cardiopulmonary resuscitation"
label(data$prevention_1)="	Hand hygiene"
label(data$prevention_2)="	N95 respirator (FFP2 or equivalent)"
label(data$prevention_3)="	Other types of medical mask (if yes, which one)"
label(data$masktype)="If Other types of medical mask is yes, please specify:"
label(data$prevention_11)="	Other"
label(data$prevention_10)="	No specific equipment"
label(data$prevention_9)="	Single use equipment"
label(data$prevention_8)="	Eye protection (i.e. goggles or face shield)"
label(data$prevention_7)="	Full body suit"
label(data$prevention_6)="	Gloves"
label(data$prevention_5)="	Disposable apron"
label(data$prevention_4)="	Fluid-resistant gown"
label(data$other_prevention)="If Other, please specify:"
label(data$service_demand_1)="1.	I am confident that the healthcare service where I work can manage current patient demand related to COVID-19"
label(data$service_demand_2)="2.	I am confident that the healthcare service where I work can continue to manage patient demand related to COVID-19 over the next 3 months."
label(data$skills_1)="I feel I have received sufficient training in the infection prevention and control practices specifically for COVID-19"
label(data$skills_2)="I have received general training for infection, prevention and control procedures for other communicable diseases"
label(data$skills_3)="I am confident in my ability to correctly don and doff personal protective equipment to prevent transmission of COVID-19 to others and myself"
label(data$belief)="I am confident that I am able to follow recommended procedures related to personal protective equipment (PPE) for COVID-19 e.g. appropriate use and disposal of gloves, apron and fluid resistant surgical mask"
label(data$social_role)="I feel it is my professional responsibility to take all measures necessary to care for COVID-19 patients"
label(data$conseq_beliefs_1)="I believe that the protective procedures at work are sufficiently effective to prevent the spread of COVID-19 in the health facility where I work"
label(data$conseq_beliefs_2)="Following the infection prevention and control recommendations will protect me from becoming ill with COVID-19"
label(data$conseq_beliefs_3)="Following recommended infection, prevention and control procedures adds significant additional strain to my workload"
label(data$intentions)="I intend to always use the recommended personal protective equipment (medical mask, eye protection, gown and gloves) when taking care of patients with suspected or confirmed COVID-19 when I have access to these"
label(data$environment_context_1)="In the health facility where I work, I have access to clear policies and protocols for everyone to follow related to infection prevention and control procedures for COVID-19"
label(data$environment_context_2)="I can easily access personal protective equipment (PPE) in line with standard infection control precautions, for example, gloves, gown, eye protection and medical mask for COVID-19 in the hospital where I work"
label(data$environment_context_3)="In the health facility where I work there are dedicated isolation facilities for patients with suspected COVID-19"
label(data$environment_context_4)="The health facility where I work receives good support from national/ regional/ local public health authorities, who provide guidance and training on how to manage COVID-19"
label(data$supplies_1)="Hand alcohol"
label(data$supplies_2)="Hand soap"
label(data$supplies_3)="Running water"
label(data$supplies_4)="N95 respirator (FFP2 or equivalent)"
label(data$supplies_5)="N95 respirator (FFP1 or equivalent)"
label(data$supplies_6)="Surgical mask"
label(data$supplies_7)="Fluid-resistant gown"
label(data$supplies_8)="Disposable apron"
label(data$supplies_9)="Gloves"
label(data$supplies_10)="Full body suit"
label(data$supplies_11)="Eye protection (i.e. goggles or face shield)"
label(data$social_influence_1)="Most of my colleagues regularly follow infection, prevention and control measures (for example, regular hand washing, use of personal protective equipment, proper disposal of equipment)"
label(data$social_influence_2)="It is expected that in my role as a healthcare professional that I will follow infection prevention and control measures"
label(data$social_influence_3)="I am encouraged and supported by senior medical/nurse staff to apply recommended infection prevention and control measures"
label(data$social_influence_4)="The local community where I currently live day-to-day are generally supportive of healthcare workers"
label(data$emotion_1)="I am concerned about the risk to myself of becoming ill with COVID-19"
label(data$emotion_2)="I am concerned about the risk to my family related to COVID-19 as a result of my job role"
label(data$emotion_3)="I am afraid of looking after patients who are ill with COVID-19"
label(data$emotion_4)="I accept that the risk of getting COVID-19 is part of my job"
label(data$emotion_5)="Whether I get infected with COVID-19 is within my control"
label(data$trust_1)="The health facility where I work is ready to manage COVID-19"
label(data$trust_2)="The health facility where I work are being honest with staff when managing COVID-19"
label(data$trust_3)="The health facility where I work would act in the best interests of its staff when managing COVID-19"
#Setting Units


#Setting Factors(will create new variable for factors)
data$gender.factor = factor(data$gender,levels=c("1","0"))
data$role.factor = factor(data$role,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$healthtype.factor = factor(data$healthtype,levels=c("1","2","3","4","5","6","7","8","9","10","11","12"))
data$healthtype_2.factor = factor(data$healthtype_2,levels=c("1","0"))
data$screening.factor = factor(data$screening,levels=c("1","2","3"))
data$screening_2.factor = factor(data$screening_2,levels=c("1","2","3","4","5","6"))
data$jobrole.factor = factor(data$jobrole,levels=c("1","2","3","4","5","6"))
data$marital.factor = factor(data$marital,levels=c("1","2","3","4","5","6","7","8"))
data$child_dependants.factor = factor(data$child_dependants,levels=c("1","2","3","4","5","6","7"))
data$adult_dependants.factor = factor(data$adult_dependants,levels=c("1","2","3"))
data$experience_1.factor = factor(data$experience_1,levels=c("1","2","3"))
data$experience_2.factor = factor(data$experience_2,levels=c("1","2","3"))
data$experience_3.factor = factor(data$experience_3,levels=c("1","2","3"))
data$experience_4.factor = factor(data$experience_4,levels=c("1","2","3"))
data$contacttype.factor = factor(data$contacttype,levels=c("1","2","3"))
data$contacttype_2.factor = factor(data$contacttype_2,levels=c("1","2"))
data$prevention_1.factor = factor(data$prevention_1,levels=c("1","2","3"))
data$prevention_2.factor = factor(data$prevention_2,levels=c("1","2","3"))
data$prevention_3.factor = factor(data$prevention_3,levels=c("1","2","3"))
data$prevention_11.factor = factor(data$prevention_11,levels=c("1","2","3"))
data$prevention_10.factor = factor(data$prevention_10,levels=c("1","2","3"))
data$prevention_9.factor = factor(data$prevention_9,levels=c("1","2","3"))
data$prevention_8.factor = factor(data$prevention_8,levels=c("1","2","3"))
data$prevention_7.factor = factor(data$prevention_7,levels=c("1","2","3"))
data$prevention_6.factor = factor(data$prevention_6,levels=c("1","2","3"))
data$prevention_5.factor = factor(data$prevention_5,levels=c("1","2","3"))
data$prevention_4.factor = factor(data$prevention_4,levels=c("1","2","3"))
data$service_demand_1.factor = factor(data$service_demand_1,levels=c("1","2","3","4","5","6","7"))
data$service_demand_2.factor = factor(data$service_demand_2,levels=c("1","2","3","4","5","6","7"))
data$skills_1.factor = factor(data$skills_1,levels=c("1","2","3","4","5","6","7"))
data$skills_2.factor = factor(data$skills_2,levels=c("1","2","3","4","5","6","7"))
data$skills_3.factor = factor(data$skills_3,levels=c("1","2","3","4","5","6","7"))
data$belief.factor = factor(data$belief,levels=c("1","2","3","4","5","6","7"))
data$social_role.factor = factor(data$social_role,levels=c("1","2","3","4","5","6","7"))
data$conseq_beliefs_1.factor = factor(data$conseq_beliefs_1,levels=c("1","2","3","4","5","6","7"))
data$conseq_beliefs_2.factor = factor(data$conseq_beliefs_2,levels=c("1","2","3","4","5","6","7"))
data$conseq_beliefs_3.factor = factor(data$conseq_beliefs_3,levels=c("1","2","3","4","5","6","7"))
data$intentions.factor = factor(data$intentions,levels=c("1","2","3","4","5","6","7"))
data$environment_context_1.factor = factor(data$environment_context_1,levels=c("1","2","3","4","5","6","7"))
data$environment_context_2.factor = factor(data$environment_context_2,levels=c("1","2","3","4","5","6","7"))
data$environment_context_3.factor = factor(data$environment_context_3,levels=c("1","2","3","4","5","6","7"))
data$environment_context_4.factor = factor(data$environment_context_4,levels=c("1","2","3","4","5","6","7"))
data$supplies_1.factor = factor(data$supplies_1,levels=c("1","2","3","4","5","6","7"))
data$supplies_2.factor = factor(data$supplies_2,levels=c("1","2","3","4","5","6","7"))
data$supplies_3.factor = factor(data$supplies_3,levels=c("1","2","3","4","5","6","7"))
data$supplies_4.factor = factor(data$supplies_4,levels=c("1","2","3","4","5","6","7"))
data$supplies_5.factor = factor(data$supplies_5,levels=c("1","2","3","4","5","6","7"))
data$supplies_6.factor = factor(data$supplies_6,levels=c("1","2","3","4","5","6","7"))
data$supplies_7.factor = factor(data$supplies_7,levels=c("1","2","3","4","5","6","7"))
data$supplies_8.factor = factor(data$supplies_8,levels=c("1","2","3","4","5","6","7"))
data$supplies_9.factor = factor(data$supplies_9,levels=c("1","2","3","4","5","6","7"))
data$supplies_10.factor = factor(data$supplies_10,levels=c("1","2","3","4","5","6","7"))
data$supplies_11.factor = factor(data$supplies_11,levels=c("1","2","3","4","5","6","7"))
data$social_influence_1.factor = factor(data$social_influence_1,levels=c("1","2","3","4","5","6","7"))
data$social_influence_2.factor = factor(data$social_influence_2,levels=c("1","2","3","4","5","6","7"))
data$social_influence_3.factor = factor(data$social_influence_3,levels=c("1","2","3","4","5","6","7"))
data$social_influence_4.factor = factor(data$social_influence_4,levels=c("1","2","3","4","5","6","7"))
data$emotion_1.factor = factor(data$emotion_1,levels=c("1","2","3","4","5","6","7"))
data$emotion_2.factor = factor(data$emotion_2,levels=c("1","2","3","4","5","6","7"))
data$emotion_3.factor = factor(data$emotion_3,levels=c("1","2","3","4","5","6","7"))
data$emotion_4.factor = factor(data$emotion_4,levels=c("1","2","3","4","5","6","7"))
data$emotion_5.factor = factor(data$emotion_5,levels=c("1","2","3","4","5","6","7"))
data$trust_1.factor = factor(data$trust_1,levels=c("1","2","3","4","5","6"))
data$trust_2.factor = factor(data$trust_2,levels=c("1","2","3","4","5","6"))
data$trust_3.factor = factor(data$trust_3,levels=c("1","2","3","4","5","6"))

levels(data$gender.factor)=c("Male","Female")
levels(data$role.factor)=c("Consultant","Medical doctor","Dentist","Intern doctor","Midwife","Nurse","Allied health professional","Social worker/counsellor","Administrative","Other")
levels(data$healthtype.factor)=c("Medical unit","surgical","intensive care","paediatric","emergency","infectious disease ward","isolation ward","maternity","Ambulance","Laboratory","Palliative Care","Other")
levels(data$healthtype_2.factor)=c("public","private")
levels(data$screening.factor)=c("Yes","No","Not sure")
levels(data$screening_2.factor)=c("daily","more than one day per week","less than one day per week","rarely","no patient contact","dont know")
levels(data$jobrole.factor)=c("Fulltime","part time","casual or locum staff","retired","student","other")
levels(data$marital.factor)=c("Single (never married)","Living with partner","Married","Civil partnership","Separated","Divorced","Widowed","Prefer not to say")
levels(data$child_dependants.factor)=c("1","2","3","4","5+","None","Prefer not to say")
levels(data$adult_dependants.factor)=c("Yes","no","prefer not to say")
levels(data$experience_1.factor)=c("Yes","No","Unsure")
levels(data$experience_2.factor)=c("Yes","No","Unsure")
levels(data$experience_3.factor)=c("Yes","No","Unsure")
levels(data$experience_4.factor)=c("Yes","No","Unsure")
levels(data$contacttype.factor)=c("Close contact: directly caring for a suspected/confirmed patient or being within a 1-2m radius of a suspected/confirmed patient","Healthcare contact: no direct contact with suspected/confirmed COVID-19 case, but was present on the ward when they were cared for.","Unknown / unsure")
levels(data$contacttype_2.factor)=c("Yes","No")
levels(data$prevention_1.factor)=c("Yes","No","Not sure")
levels(data$prevention_2.factor)=c("Yes","No","Not sure")
levels(data$prevention_3.factor)=c("Yes","No","Not sure")
levels(data$prevention_11.factor)=c("Yes","No","Not sure")
levels(data$prevention_10.factor)=c("Yes","No","Not sure")
levels(data$prevention_9.factor)=c("Yes","No","Not sure")
levels(data$prevention_8.factor)=c("Yes","No","Not sure")
levels(data$prevention_7.factor)=c("Yes","No","Not sure")
levels(data$prevention_6.factor)=c("Yes","No","Not sure")
levels(data$prevention_5.factor)=c("Yes","No","Not sure")
levels(data$prevention_4.factor)=c("Yes","No","Not sure")
levels(data$service_demand_1.factor)=c("strongly disagree","disagree","somewhat disagree","neither agree nor disagree","somewhat agree","agree","strongly agree.")
levels(data$service_demand_2.factor)=c("strongly disagree","disagree","somewhat disagree","neither agree nor disagree","somewhat agree","agree","strongly agree.")
levels(data$skills_1.factor)=c("strongly disagree","disagree","somewhat disagree","neither agree nor disagree","somewhat agree","agree","strongly agree.")
levels(data$skills_2.factor)=c("strongly disagree","disagree","somewhat disagree","neither agree nor disagree","somewhat agree","agree","strongly agree.")
levels(data$skills_3.factor)=c("strongly disagree","disagree","somewhat disagree","neither agree nor disagree","somewhat agree","agree","strongly agree.")
levels(data$belief.factor)=c("strongly disagree","disagree","somewhat disagree","neither agree nor disagree","somewhat agree","agree","strongly agree.")
levels(data$social_role.factor)=c("strongly disagree","disagree","somewhat disagree","neither agree nor disagree","somewhat agree","agree","strongly agree.")
levels(data$conseq_beliefs_1.factor)=c("strongly disagree","disagree","somewhat disagree","neither agree nor disagree","somewhat agree","agree","strongly agree.")
levels(data$conseq_beliefs_2.factor)=c("strongly disagree","disagree","somewhat disagree","neither agree nor disagree","somewhat agree","agree","strongly agree.")
levels(data$conseq_beliefs_3.factor)=c("strongly disagree","disagree","somewhat disagree","neither agree nor disagree","somewhat agree","agree","strongly agree.")
levels(data$intentions.factor)=c("strongly disagree","disagree","somewhat disagree","neither agree nor disagree","somewhat agree","agree","strongly agree.")
levels(data$environment_context_1.factor)=c("strongly disagree","disagree","somewhat disagree","neither agree nor disagree","somewhat agree","agree","strongly agree.")
levels(data$environment_context_2.factor)=c("strongly disagree","disagree","somewhat disagree","neither agree nor disagree","somewhat agree","agree","strongly agree.")
levels(data$environment_context_3.factor)=c("strongly disagree","disagree","somewhat disagree","neither agree nor disagree","somewhat agree","agree","strongly agree.")
levels(data$environment_context_4.factor)=c("strongly disagree","disagree","somewhat disagree","neither agree nor disagree","somewhat agree","agree","strongly agree.")
levels(data$supplies_1.factor)=c("strongly disagree","disagree","somewhat disagree","neither agree nor disagree","somewhat agree","agree","strongly agree.")
levels(data$supplies_2.factor)=c("strongly disagree","disagree","somewhat disagree","neither agree nor disagree","somewhat agree","agree","strongly agree.")
levels(data$supplies_3.factor)=c("strongly disagree","disagree","somewhat disagree","neither agree nor disagree","somewhat agree","agree","strongly agree.")
levels(data$supplies_4.factor)=c("strongly disagree","disagree","somewhat disagree","neither agree nor disagree","somewhat agree","agree","strongly agree.")
levels(data$supplies_5.factor)=c("strongly disagree","disagree","somewhat disagree","neither agree nor disagree","somewhat agree","agree","strongly agree.")
levels(data$supplies_6.factor)=c("strongly disagree","disagree","somewhat disagree","neither agree nor disagree","somewhat agree","agree","strongly agree.")
levels(data$supplies_7.factor)=c("strongly disagree","disagree","somewhat disagree","neither agree nor disagree","somewhat agree","agree","strongly agree.")
levels(data$supplies_8.factor)=c("strongly disagree","disagree","somewhat disagree","neither agree nor disagree","somewhat agree","agree","strongly agree.")
levels(data$supplies_9.factor)=c("strongly disagree","disagree","somewhat disagree","neither agree nor disagree","somewhat agree","agree","strongly agree.")
levels(data$supplies_10.factor)=c("strongly disagree","disagree","somewhat disagree","neither agree nor disagree","somewhat agree","agree","strongly agree.")
levels(data$supplies_11.factor)=c("strongly disagree","disagree","somewhat disagree","neither agree nor disagree","somewhat agree","agree","strongly agree.")
levels(data$social_influence_1.factor)=c("strongly disagree","disagree","somewhat disagree","neither agree nor disagree","somewhat agree","agree","strongly agree.")
levels(data$social_influence_2.factor)=c("strongly disagree","disagree","somewhat disagree","neither agree nor disagree","somewhat agree","agree","strongly agree.")
levels(data$social_influence_3.factor)=c("strongly disagree","disagree","somewhat disagree","neither agree nor disagree","somewhat agree","agree","strongly agree.")
levels(data$social_influence_4.factor)=c("strongly disagree","disagree","somewhat disagree","neither agree nor disagree","somewhat agree","agree","strongly agree.")
levels(data$emotion_1.factor)=c("strongly disagree","disagree","somewhat disagree","neither agree nor disagree","somewhat agree","agree","strongly agree.")
levels(data$emotion_2.factor)=c("strongly disagree","disagree","somewhat disagree","neither agree nor disagree","somewhat agree","agree","strongly agree.")
levels(data$emotion_3.factor)=c("strongly disagree","disagree","somewhat disagree","neither agree nor disagree","somewhat agree","agree","strongly agree.")
levels(data$emotion_4.factor)=c("strongly disagree","disagree","somewhat disagree","neither agree nor disagree","somewhat agree","agree","strongly agree.")
levels(data$emotion_5.factor)=c("strongly disagree","disagree","somewhat disagree","neither agree nor disagree","somewhat agree","agree","strongly agree.")
levels(data$trust_1.factor)=c("all of the time","most of the time","more than half of the time","less than half of the time","some of the time","at no time")
levels(data$trust_2.factor)=c("all of the time","most of the time","more than half of the time","less than half of the time","some of the time","at no time")
levels(data$trust_3.factor)=c("all of the time","most of the time","more than half of the time","less than half of the time","some of the time","at no time")
