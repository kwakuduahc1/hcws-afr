#Clear existing data and graphics
rm(list=ls())
graphics.off()
#Load Hmisc library
library(Hmisc)
#Read Data
data=read.csv('CameroonALERRTHealth-INTERNATIONALHCWDATA_DATA_2021-09-21_1907.csv')
#Setting Labels

label(data$d_carer_b)="1) Do you currently provide direct care to patients, or do you expect to provide direct care to patients in a health facility/hospital within the next four weeks (NOT limited to COVID-19 patients)? "
label(data$consent)="2) I understand that my participation is completely voluntary "
label(data$willing)="3) Are you willing to participate in this survey?      "
label(data$d_region_c_o)="4) In which city do you work? "
label(data$d_age_i)="5) Age "
label(data$d_gender)="6) Gender"
label(data$d_edu_c_o)="7) Educational level completed "
label(data$d_hosp_c_u)="8) What type of facility are you primarily stationed at? "
label(data$d_marital_c_u)="9) What is your current marital status? "
label(data$d_chdn_i)="10) Number of child dependents in the household below 18 years "
label(data$d_job_role_c_u)="11) What is your current job role? "
label(data$d_work_unit_c_u)="12) Select the unit within the hospital that most closely matches the job that you do "
label(data$d_contact_freq_i)="13) How many days in the previous month did you have any direct patient contact (touching or speaking in-person)? "
label(data$d_job_type_c_u)="14) What is your current engagement type with the hospital? "
label(data$d_training_years_i)="15) For how many years have you been seeing patients as a professional?  "
label(data$d_aware_novel)="16) Are you aware of the novel coronavirus outbreak? "
label(data$d_getting_infected)="28) What is your probability of getting infected with the novel coronavirus? "
label(data$d_contacting_coronavirus)="29) How severe would contracting the novel coronavirus be for you? "
label(data$d_consider_yourself)="30) How susceptible do you consider yourself to an infection with the novel coronavirus?"
label(data$e_ever_worked_c_u)="31a) Have you previously worked in a clinical setting during an acute respiratory epidemic or pandemic?"
label(data$e_ever_cared_c_u)="31b) In a clinical setting, did you personally care for patients with suspected or confirmed infection caused by a novel respiratory pathogen?"
label(data$e_ever_contact_c_u)="31c) Has a patient with suspected or confirmed COVID-19 attended the hospital in which you work?"
label(data$e_do_care_c_o)="31d) Have you personally cared for a patient with suspected or confirmed COVID-19 infection?"
label(data$e_contact_type_c_o)="31e) What was your most recent type of contact with a suspected/confirmed COVID-19 case?  "
label(data$e_aerosol_c_o)="32a) Did this contact include an aerosol generating procedure? For example, tracheal intubation, non-invasive ventilation, bronchoscopy, cardiopulmonary resuscitation?"
label(data$i_n95_c_o)="32b) During my direct contact, I used an N95 respirator mask"
label(data$i_mask_c_o)="32c) During my direct contact, I used a Surgical Mask"
label(data$i_hand_hyg_c_o)="32d) During my direct contact, I performed Hand hygiene"
label(data$i_gown_c_o)="32e) During my direct contact, I used Fluid-Resistant Gown"
label(data$i_apron_c_o)="32f) During my direct contact, I used Disposable plastic apron"
label(data$i_full_suit_c_o)="32g) During my direct contact, I wore a Full body suit"
label(data$i_gloves_c_o)="32h) During my direct contact, I wore a Gloves"
label(data$i_eye_protect_c_o)="32i) During my direct contact, I used Eye Protection (goggles, face shields)"
label(data$i_sing_use_eqps_c_o)="32j) During my direct contact, I used a Single-use (disposable) equipment (e.g. disposable gloves, auto-disable syringes)"
label(data$s_can_manage_c_o)="33a) I am confident that the hospital where I work can MANAGE CURRENT patient demand related to COVID-19"
label(data$s_cont_mge_c_o)="33b) I am confident that the hospital where I work can CONTINUE TO MANAGE patient demand related to COVID-19 over the next 3 months"
label(data$s_ipc_skill_c_o)="33c) I have received general training for infection, prevention, and control procedures for communicable diseases"
label(data$s_received_training)="33d) I have received sufficient training in the Infection Prevention and Control (IPC)  practices specifically for COVID-19."
label(data$d_protect_yourself)="35) I know how to protect myself from coronavirus"
label(data$s_will_use_c_o)="34e) I will always use the recommended personal protective equipment (medical mask, eye protection, gown and gloves) when taking care of patients with suspected or confirmed COVID-19 when I have access to these"
label(data$s_is_straining_c_o)="34d) Following recommended IPC procedures adds significant additional strain to my workload"
label(data$s_is_proected)="34c) Following the IPC recommendations will protect me from becoming ill with COVID-19"
label(data$s_can_protect_c_0)="34b) I consider that the implementation of protective procedures at work are effective to prevent the spread of COVID-19 in my hospital"
label(data$s_can_followc_o)="34a) I am confident that I am able to follow recommended procedures related to personal protective equipment (PPE) for COVID-19 e.g. appropriate use and disposal of gloves, apron and fluid resistant surgical mask"
label(data$s_can_don_c_o)="33e) I am confident in my ability to correctly don and doff personal protective equipment to prevent transmission of COVID-19 to others and myself."
label(data$d_avoiding_infection)="36) For me avoiding an infection with the novel coronavirus in the current situation is"
label(data$d_reccommendations)="37) I follow the recommendations from authorities in my country to prevent spread of novel coronavirus."
label(data$hand_washing)="38a) Hand washing for 20 seconds"
label(data$avoid_eyes_nose)="38b) Avoiding touching your eyes, nose, and mouth with unwashed hands"
label(data$disinfectants)="38c) Use of disinfectants to clean hands when soap and water is not available for washing hands"
label(data$staying_home)="38d) Staying home when you are sick or when you have a cold"
label(data$balance_diet)="38i) Ensuring a balanced diet"
label(data$cover_mouth)="38h) Covering your mouth when you cough"
label(data$food_supp)="38g) Taking food supplements"
label(data$herbal_suppl)="38f) Herbal supplements"
label(data$not_travel)="38e) Not travelling abroad"
label(data$using_algae)="38k) Using algae"
label(data$caution_mail)="38l) Using caution when opening mail"
label(data$avoid_meat)="38m) Avoiding eating meat"
label(data$flu_shot)="38n) Getting the flu shot"
label(data$exercising)="38o) Exercising regularly"
label(data$face_mask)="38p) Wearing a face mask"
label(data$avoid_place_people)="38q) Avoiding places where many people gather"
label(data$antibiotics)="38r) Using antibiotics"
label(data$homeopathic)="38s) Using homeopathic remedies"
label(data$quarantine)="38t) Self-quarantine"
label(data$hand_washing2)="39a) Hand washing for 20 seconds"
label(data$avoid_eyes2)="39b) Avoiding touching your eyes, nose, and mouth with unwashed hands"
label(data$desinfectants2)="39c) Use of disinfectants to clean hands when soap and water is not available for washing hands"
label(data$satying_home_sick)="39d) Staying home when you are sick or when you have a cold"
label(data$nt_aborad)="39e) Not travelling abroad"
label(data$herb_supp)="39f) Herbal supplements"
label(data$food_supplements)="39g) Taking food supplements"
label(data$covering_mouth)="39h) Covering your mouth when you cough"
label(data$diet_balanced)="39i) Ensuring a balanced diet"
label(data$avoid_close_cont)="39j) Avoiding close contact with someone who is infected"
label(data$use_algae2)="39k) Using algae"
label(data$opening_mail)="39l) Using caution when opening mail"
label(data$avoid_eating_meat)="39m) Avoiding eating meat"
label(data$get_flu_shot)="39n) Getting the flu shot"
label(data$exercise_reg)="39o) Exercising regularly"
label(data$wering_mask)="39p) Wearing a face mask"
label(data$avoid_people_place)="39q) Avoiding places where many people gather"
label(data$atb)="39r) Using antibiotics"
label(data$hm_drugs)="39s) Using homeopathic remedies"
label(data$self_quarantine)="39t) Self-quarantine"
label(data$wash_hand)="40) Washing my hands often with water and soap for 20 seconds each time is :"
label(data$p_family_washing)="41a) I see my family and friends washing their hands frequently"
label(data$p_auth_wash)="41b) Health authorities urge me to wash my hands frequently"
label(data$p_water_access)="41c) I seldomly have access to water and soap"
label(data$p_hand_freq)="41d) My hands dry out when I wash them frequently"
label(data$p_protect_others)="41e) It helps to protect others to wash my hands frequently"
label(data$p_avoid_crowded)="41f) My family and friends avoid crowded areas"
label(data$p_author_crowded)="41h) Health authorities urge me to avoid crowded areas"
label(data$p_avoid_social_contacts)="41g) My family and friends avoid social contacts"
label(data$p_protect_crowded)="41i) I want to protect others by avoiding crowded areas"
label(data$s_proto_exists_c_o)="42a) There are clear policies and protocols in my hospital for everyone to follow related to IPC procedures for COVID-19"
label(data$s_can_access_ppe_c_o)="42b) I can easily access personal protective equipment (PPE) in line with standard infection control precautions, such as gloves, apron and masks, for COVID-19 in the hospital where I work"
label(data$s_has_iso_fac)="42c) In my hospital there are dedicated isolation facilities for patients with COVID-19"
label(data$s_know_cont_c_o)="42d) I know who to contact if I have trouble with PPE, or if I have a body fluid exposure/ unprotected contact with a confirmed case of COVID-19"
label(data$s_get_supp_c_o)="42e) The hospital where I work receives good support from national/ regional/municipal/district/assembly/local public health authorities, who provide guidance and training on how to manage COVID-19"
label(data$a_vaccine_study)="43) Are you willing to participate in a study of a vaccine trial against COVID-19?"
label(data$a_why_not_part)="43a) If no, why"
label(data$a_novel_covid)="44) I feel that the novel coronavirus"
label(data$a_novel_covid_worrying)="49) The novel coronavirus is"
label(data$a_spread_covid)="45) I feel that the novel coronavirus is spreading"
label(data$a_think_about)="46) Something I think about"
label(data$a_novel_covid_fear)="47) The novel coronavirus is"
label(data$t_public_channels)="54a) Public television channels"
label(data$s_daily_newspapers)="54b)Daily or weekly newspapers"
label(data$s_conv_family)="54c) Conversations with family and friends"
label(data$s_conv_colleagues)="54d) Conversations with circle of colleagues"
label(data$s_consult_hcw)="54e) Consultation with health workers"
label(data$s_private_tel)="54f) Private television stations"
label(data$s_websites)="54g) Websites or online news pages"
label(data$s_journals)="54h) Journals"
label(data$i_public_television)="55a) Public television channels"
label(data$s_private_radio)="54k) Private radio stations"
label(data$s_social_media)="54i) social media (Facebook, Twitter, YouTube, WhatsApp)"
label(data$s_search_engines)="54j) Search engines ( e.g : google, firefox )"
label(data$s_public_station)="54l) Public radio stations"
label(data$i_daily_newspapers)="55b) Daily or weekly newspapers"
label(data$i_conv_family)="55c) Conversations with family and friends"
label(data$i_websites)="55g) Websites or online news pages"
label(data$i_private_station_tel)="55f) Private television stations"
label(data$i_consult_hcw)="55e) Consultation with health workers"
label(data$i_conv_colleagues)="55d) Conversations with circle of colleagues"
label(data$i_journals)="55h) Journals"
label(data$i_private_station_radio)="55k) Private radio stations"
label(data$i_search_engines)="55j) Search engines ( e.g : google, firefox )"
label(data$i_social_media)="55i) social media (Facebook, Twitter, YouTube, WhatsApp)"
label(data$i_public_station_radio)="55l)Public radio stations"
label(data$local_context)="56a)Adapt to local context"
label(data$medecines)="56b)Bought extra medicines"
label(data$supplies)="56c)Bought extra supplies at the pharmacy"
label(data$medication)="56d)Bought extra medication that I take regularly"
label(data$large_scale_supplies)="56e)Bought food supplies on a large scale"
label(data$large_scale_things)="56f)Bought other everyday things on a large scale"
label(data$large_scale_disinfectants)="56g)Bought disinfectants on large scale"
label(data$avoid_people)="56h)Avoided people who come from countries where corona virus cases have occurred, such as China or Italy"
label(data$avoid_visits_fam)="56m)Avoided visiting family even when I did not have symptoms of disease"
label(data$cancelled_bus_trip)="56l)Canceled business trips"
label(data$cancelled_hol_trip)="56k)Canceled holiday trips"
label(data$cancelled_fligths)="56j)Canceled flights or train rides"
label(data$social_events)="56i)Stayed away from social events I had planned to attend"
label(data$no_visit_child)="56o)Decided that my child could not meet with a friend"
label(data$no_visit_fam)="56n)Asked family members or friends not to visit me"
label(data$c_cmts_c_o)="58) Thank you for completing this survey. Please type here if you have any comments "
#Setting Units


#Setting Factors(will create new variable for factors)
data$d_carer_b.factor = factor(data$d_carer_b,levels=c("1","0"))
data$consent.factor = factor(data$consent,levels=c("1","0"))
data$willing.factor = factor(data$willing,levels=c("1","0"))
data$d_region_c_o.factor = factor(data$d_region_c_o,levels=c("1","2"))
data$d_gender.factor = factor(data$d_gender,levels=c("1","2"))
data$d_edu_c_o.factor = factor(data$d_edu_c_o,levels=c("1","2","3","4","5","6","7"))
data$d_hosp_c_u.factor = factor(data$d_hosp_c_u,levels=c("1","2","3","4","5"))
data$d_marital_c_u.factor = factor(data$d_marital_c_u,levels=c("0","1","2","3"))
data$d_chdn_i.factor = factor(data$d_chdn_i,levels=c("0","1","2","3","4","5","6"))
data$d_job_role_c_u.factor = factor(data$d_job_role_c_u,levels=c("1","2","3","4","5","6","7","8","9","10"))
data$d_work_unit_c_u.factor = factor(data$d_work_unit_c_u,levels=c("1","2","3","4","5","6","7","8","9","10","11"))
data$d_contact_freq_i.factor = factor(data$d_contact_freq_i,levels=c("1","2","3","4","5","6"))
data$d_job_type_c_u.factor = factor(data$d_job_type_c_u,levels=c("0","1","2","3","4","5","6"))
data$d_training_years_i.factor = factor(data$d_training_years_i,levels=c("1","2","3","4","5"))
data$d_aware_novel.factor = factor(data$d_aware_novel,levels=c("1","2","3"))
data$d_getting_infected.factor = factor(data$d_getting_infected,levels=c("1","2","3","4","5","6","7"))
data$d_contacting_coronavirus.factor = factor(data$d_contacting_coronavirus,levels=c("1","2","3","4","5","6","7"))
data$d_consider_yourself.factor = factor(data$d_consider_yourself,levels=c("1","2","3","4","5","6","7"))
data$e_ever_worked_c_u.factor = factor(data$e_ever_worked_c_u,levels=c("0","1","2"))
data$e_ever_cared_c_u.factor = factor(data$e_ever_cared_c_u,levels=c("0","1","2"))
data$e_ever_contact_c_u.factor = factor(data$e_ever_contact_c_u,levels=c("0","1","2"))
data$e_do_care_c_o.factor = factor(data$e_do_care_c_o,levels=c("0","1","2"))
data$e_contact_type_c_o.factor = factor(data$e_contact_type_c_o,levels=c("1","2","3"))
data$e_aerosol_c_o.factor = factor(data$e_aerosol_c_o,levels=c("0","1","2"))
data$i_n95_c_o.factor = factor(data$i_n95_c_o,levels=c("0","1","2"))
data$i_mask_c_o.factor = factor(data$i_mask_c_o,levels=c("0","1","2"))
data$i_hand_hyg_c_o.factor = factor(data$i_hand_hyg_c_o,levels=c("0","1","2"))
data$i_gown_c_o.factor = factor(data$i_gown_c_o,levels=c("0","1","2"))
data$i_apron_c_o.factor = factor(data$i_apron_c_o,levels=c("0","1","2"))
data$i_full_suit_c_o.factor = factor(data$i_full_suit_c_o,levels=c("0","1","2"))
data$i_gloves_c_o.factor = factor(data$i_gloves_c_o,levels=c("0","1","2"))
data$i_eye_protect_c_o.factor = factor(data$i_eye_protect_c_o,levels=c("0","1","2"))
data$i_sing_use_eqps_c_o.factor = factor(data$i_sing_use_eqps_c_o,levels=c("0","1","2"))
data$s_can_manage_c_o.factor = factor(data$s_can_manage_c_o,levels=c("-2","-1","0","1","2"))
data$s_cont_mge_c_o.factor = factor(data$s_cont_mge_c_o,levels=c("-2","-1","0","1","2"))
data$s_ipc_skill_c_o.factor = factor(data$s_ipc_skill_c_o,levels=c("-2","-1","0","1","2"))
data$s_received_training.factor = factor(data$s_received_training,levels=c("-2","-1","0","1","2"))
data$d_protect_yourself.factor = factor(data$d_protect_yourself,levels=c("1","2","3","4","5","6","7"))
data$s_will_use_c_o.factor = factor(data$s_will_use_c_o,levels=c("-2","-1","0","1","2"))
data$s_is_straining_c_o.factor = factor(data$s_is_straining_c_o,levels=c("-2","-1","0","1","2"))
data$s_is_proected.factor = factor(data$s_is_proected,levels=c("-2","-1","0","1","2"))
data$s_can_protect_c_0.factor = factor(data$s_can_protect_c_0,levels=c("-2","-1","0","1","2"))
data$s_can_followc_o.factor = factor(data$s_can_followc_o,levels=c("-2","-1","0","1","2"))
data$s_can_don_c_o.factor = factor(data$s_can_don_c_o,levels=c("-2","-1","0","1","2"))
data$d_avoiding_infection.factor = factor(data$d_avoiding_infection,levels=c("1","2","3","4","5","6","7"))
data$d_reccommendations.factor = factor(data$d_reccommendations,levels=c("1","2","3","4","5","6","7"))
data$hand_washing.factor = factor(data$hand_washing,levels=c("1","2","3"))
data$avoid_eyes_nose.factor = factor(data$avoid_eyes_nose,levels=c("1","2","3"))
data$disinfectants.factor = factor(data$disinfectants,levels=c("1","2","3"))
data$staying_home.factor = factor(data$staying_home,levels=c("1","2","3"))
data$balance_diet.factor = factor(data$balance_diet,levels=c("1","2","3"))
data$cover_mouth.factor = factor(data$cover_mouth,levels=c("1","2","3"))
data$food_supp.factor = factor(data$food_supp,levels=c("1","2","3"))
data$herbal_suppl.factor = factor(data$herbal_suppl,levels=c("1","2","3"))
data$not_travel.factor = factor(data$not_travel,levels=c("1","2","3"))
data$using_algae.factor = factor(data$using_algae,levels=c("1","2","3"))
data$caution_mail.factor = factor(data$caution_mail,levels=c("1","2","3"))
data$avoid_meat.factor = factor(data$avoid_meat,levels=c("1","2","3"))
data$flu_shot.factor = factor(data$flu_shot,levels=c("1","2","3"))
data$exercising.factor = factor(data$exercising,levels=c("1","2","3"))
data$face_mask.factor = factor(data$face_mask,levels=c("1","2","3"))
data$avoid_place_people.factor = factor(data$avoid_place_people,levels=c("1","2","3"))
data$antibiotics.factor = factor(data$antibiotics,levels=c("1","2","3"))
data$homeopathic.factor = factor(data$homeopathic,levels=c("1","2","3"))
data$quarantine.factor = factor(data$quarantine,levels=c("1","2","3"))
data$hand_washing2.factor = factor(data$hand_washing2,levels=c("1","2","3"))
data$avoid_eyes2.factor = factor(data$avoid_eyes2,levels=c("1","2","3"))
data$desinfectants2.factor = factor(data$desinfectants2,levels=c("1","2","3"))
data$satying_home_sick.factor = factor(data$satying_home_sick,levels=c("1","2","3"))
data$nt_aborad.factor = factor(data$nt_aborad,levels=c("1","2","3"))
data$herb_supp.factor = factor(data$herb_supp,levels=c("1","2","3"))
data$food_supplements.factor = factor(data$food_supplements,levels=c("1","2","3"))
data$covering_mouth.factor = factor(data$covering_mouth,levels=c("1","2","3"))
data$diet_balanced.factor = factor(data$diet_balanced,levels=c("1","2","3"))
data$avoid_close_cont.factor = factor(data$avoid_close_cont,levels=c("1","2","3"))
data$use_algae2.factor = factor(data$use_algae2,levels=c("1","2","3"))
data$opening_mail.factor = factor(data$opening_mail,levels=c("1","2","3"))
data$avoid_eating_meat.factor = factor(data$avoid_eating_meat,levels=c("1","2","3"))
data$get_flu_shot.factor = factor(data$get_flu_shot,levels=c("1","2","3"))
data$exercise_reg.factor = factor(data$exercise_reg,levels=c("1","2","3"))
data$wering_mask.factor = factor(data$wering_mask,levels=c("1","2","3"))
data$avoid_people_place.factor = factor(data$avoid_people_place,levels=c("1","2","3"))
data$atb.factor = factor(data$atb,levels=c("1","2","3"))
data$hm_drugs.factor = factor(data$hm_drugs,levels=c("1","2","3"))
data$self_quarantine.factor = factor(data$self_quarantine,levels=c("1","2","3"))
data$wash_hand.factor = factor(data$wash_hand,levels=c("1","2","3","4","5","6","7"))
data$p_family_washing.factor = factor(data$p_family_washing,levels=c("1","2","3","4","5","6","7"))
data$p_auth_wash.factor = factor(data$p_auth_wash,levels=c("1","2","3","4","5","6","7"))
data$p_water_access.factor = factor(data$p_water_access,levels=c("1","2","3","4","5","6","7"))
data$p_hand_freq.factor = factor(data$p_hand_freq,levels=c("1","2","3","4","5","6","7"))
data$p_protect_others.factor = factor(data$p_protect_others,levels=c("1","2","3","4","5","6","7"))
data$p_avoid_crowded.factor = factor(data$p_avoid_crowded,levels=c("1","2","3","4","5","6","7"))
data$p_author_crowded.factor = factor(data$p_author_crowded,levels=c("1","2","3","4","5","6","7"))
data$p_avoid_social_contacts.factor = factor(data$p_avoid_social_contacts,levels=c("1","2","3","4","5","6","7"))
data$p_protect_crowded.factor = factor(data$p_protect_crowded,levels=c("1","2","3","4","5","6","7"))
data$s_proto_exists_c_o.factor = factor(data$s_proto_exists_c_o,levels=c("-2","-1","0","1","2"))
data$s_can_access_ppe_c_o.factor = factor(data$s_can_access_ppe_c_o,levels=c("-2","-1","0","1","2"))
data$s_has_iso_fac.factor = factor(data$s_has_iso_fac,levels=c("-2","-1","0","1","2"))
data$s_know_cont_c_o.factor = factor(data$s_know_cont_c_o,levels=c("-2","-1","0","1","2"))
data$s_get_supp_c_o.factor = factor(data$s_get_supp_c_o,levels=c("-2","-1","0","1","2"))
data$a_vaccine_study.factor = factor(data$a_vaccine_study,levels=c("1","2","3"))
data$a_novel_covid.factor = factor(data$a_novel_covid,levels=c("1","2","3","4","5","6","7"))
data$a_novel_covid_worrying.factor = factor(data$a_novel_covid_worrying,levels=c("1","2","3","4","5","6","7"))
data$a_spread_covid.factor = factor(data$a_spread_covid,levels=c("1","2","3","4","5","6","7"))
data$a_think_about.factor = factor(data$a_think_about,levels=c("1","2","3","4","5","6","7"))
data$a_novel_covid_fear.factor = factor(data$a_novel_covid_fear,levels=c("1","2","3","4","5","6","7"))
data$t_public_channels.factor = factor(data$t_public_channels,levels=c("1","2","3","4","5","6","7"))
data$s_daily_newspapers.factor = factor(data$s_daily_newspapers,levels=c("1","2","3","4","5","6","7"))
data$s_conv_family.factor = factor(data$s_conv_family,levels=c("1","2","3","4","5","6","7"))
data$s_conv_colleagues.factor = factor(data$s_conv_colleagues,levels=c("1","2","3","4","5","6","7"))
data$s_consult_hcw.factor = factor(data$s_consult_hcw,levels=c("1","2","3","4","5","6","7"))
data$s_private_tel.factor = factor(data$s_private_tel,levels=c("1","2","3","4","5","6","7"))
data$s_websites.factor = factor(data$s_websites,levels=c("1","2","3","4","5","6","7"))
data$s_journals.factor = factor(data$s_journals,levels=c("1","2","3","4","5","6","7"))
data$i_public_television.factor = factor(data$i_public_television,levels=c("1","2","3","4","5","6","7"))
data$s_private_radio.factor = factor(data$s_private_radio,levels=c("1","2","3","4","5","6","7"))
data$s_social_media.factor = factor(data$s_social_media,levels=c("1","2","3","4","5","6","7"))
data$s_search_engines.factor = factor(data$s_search_engines,levels=c("1","2","3","4","5","6","7"))
data$s_public_station.factor = factor(data$s_public_station,levels=c("1","2","3","4","5","6","7"))
data$i_daily_newspapers.factor = factor(data$i_daily_newspapers,levels=c("1","2","3","4","5","6","7"))
data$i_conv_family.factor = factor(data$i_conv_family,levels=c("1","2","3","4","5","6","7"))
data$i_websites.factor = factor(data$i_websites,levels=c("1","2","3","4","5","6","7"))
data$i_private_station_tel.factor = factor(data$i_private_station_tel,levels=c("1","2","3","4","5","6","7"))
data$i_consult_hcw.factor = factor(data$i_consult_hcw,levels=c("1","2","3","4","5","6","7"))
data$i_conv_colleagues.factor = factor(data$i_conv_colleagues,levels=c("1","2","3","4","5","6","7"))
data$i_journals.factor = factor(data$i_journals,levels=c("1","2","3","4","5","6","7"))
data$i_private_station_radio.factor = factor(data$i_private_station_radio,levels=c("1","2","3","4","5","6","7"))
data$i_search_engines.factor = factor(data$i_search_engines,levels=c("1","2","3","4","5","6","7"))
data$i_social_media.factor = factor(data$i_social_media,levels=c("1","2","3","4","5","6","7"))
data$i_public_station_radio.factor = factor(data$i_public_station_radio,levels=c("1","2","3","4","5","6","7"))
data$local_context.factor = factor(data$local_context,levels=c("1","2","3"))
data$medecines.factor = factor(data$medecines,levels=c("1","2","3"))
data$supplies.factor = factor(data$supplies,levels=c("1","2","3"))
data$medication.factor = factor(data$medication,levels=c("1","2","3"))
data$large_scale_supplies.factor = factor(data$large_scale_supplies,levels=c("1","2","3"))
data$large_scale_things.factor = factor(data$large_scale_things,levels=c("1","2","3"))
data$large_scale_disinfectants.factor = factor(data$large_scale_disinfectants,levels=c("1","2","3"))
data$avoid_people.factor = factor(data$avoid_people,levels=c("1","2","3"))
data$avoid_visits_fam.factor = factor(data$avoid_visits_fam,levels=c("1","2","3"))
data$cancelled_bus_trip.factor = factor(data$cancelled_bus_trip,levels=c("1","2","3"))
data$cancelled_hol_trip.factor = factor(data$cancelled_hol_trip,levels=c("1","2","3"))
data$cancelled_fligths.factor = factor(data$cancelled_fligths,levels=c("1","2","3"))
data$social_events.factor = factor(data$social_events,levels=c("1","2","3"))
data$no_visit_child.factor = factor(data$no_visit_child,levels=c("1","2","3"))
data$no_visit_fam.factor = factor(data$no_visit_fam,levels=c("1","2","3"))

levels(data$d_carer_b.factor)=c("Yes","No")
levels(data$consent.factor)=c("Yes","No")
levels(data$willing.factor)=c("Yes","No")
levels(data$d_region_c_o.factor)=c("Yaounde","Douala")
levels(data$d_gender.factor)=c("Male","Female")
levels(data$d_edu_c_o.factor)=c("Secondary School/SHS/SSS or Lower","Post-Secondary School/SSS/SHS Certificate","High School Diploma","First University Degree","Masters","PhD","Other")
levels(data$d_hosp_c_u.factor)=c("Unlucrative private Health facility","Lucrative private health Facility","Public Health facility","Denomitional Health Facility","Others")
levels(data$d_marital_c_u.factor)=c("Prefer not to say","Living alone","Living with another (Married, Partnership)","Separated/ Divorced/ Widowed")
levels(data$d_chdn_i.factor)=c("0","1","2","3","4","5","More than 5")
levels(data$d_job_role_c_u.factor)=c("Medical Doctor","Physician Assistant","Pharmacist","Nurse","Midwife","Nurse Assistant Preventive","Nurse Assistant Clinical","Health Assistants","Allied health professionals","Non clinical")
levels(data$d_work_unit_c_u.factor)=c("Medical Unit","Matches the job that you do Surgical Unit","Pediatric","Emergency","Infectious Disease Ward","Maternity","Outpatient department","Reproductive and child Health","Disease Control","Nutrition/Dietetics","Other")
levels(data$d_contact_freq_i.factor)=c("Almost every day of the month","No more than three days during each week","Just about one day during each week","About one day every 2 weeks","About one day in the month","Never")
levels(data$d_job_type_c_u.factor)=c("Prefer not to say","Short-term contract (< 13mths)","Long-Term Contract (>12mths)","Voluntary","Casual or locum staff","Part time","Fulltime")
levels(data$d_training_years_i.factor)=c("< 1 year","2 to 5  years","6 to 10 years","11 to 15 years","More than 15 years")
levels(data$d_aware_novel.factor)=c("Yes","No","Dont know")
levels(data$d_getting_infected.factor)=c("[1]  Extremely unlikely","[2]","[3]","[4]","[5]","[6]","[7] Extremely likely")
levels(data$d_contacting_coronavirus.factor)=c("[1]  Extremely unlikely","[2]","[3]","[4]","[5]","[6]","[7] Extremely likely")
levels(data$d_consider_yourself.factor)=c("[1]  Extremely unlikely","[2]","[3]","[4]","[5]","[6]","[7] Extremely likely")
levels(data$e_ever_worked_c_u.factor)=c("No","Yes","Unsure")
levels(data$e_ever_cared_c_u.factor)=c("No","Yes","Unsure")
levels(data$e_ever_contact_c_u.factor)=c("No","Yes","Unsure")
levels(data$e_do_care_c_o.factor)=c("No","Yes","Unsure")
levels(data$e_contact_type_c_o.factor)=c("There are positive COVID-19 patients in the same facility but no direct contact","Direct Contact with COVID-19 patients","Unsure")
levels(data$e_aerosol_c_o.factor)=c("No","Yes","Unsure")
levels(data$i_n95_c_o.factor)=c("No","Yes","Unsure")
levels(data$i_mask_c_o.factor)=c("No","Yes","Unsure")
levels(data$i_hand_hyg_c_o.factor)=c("No","Yes","Unsure")
levels(data$i_gown_c_o.factor)=c("No","Yes","Unsure")
levels(data$i_apron_c_o.factor)=c("No","Yes","Unsure")
levels(data$i_full_suit_c_o.factor)=c("No","Yes","Unsure")
levels(data$i_gloves_c_o.factor)=c("No","Yes","Unsure")
levels(data$i_eye_protect_c_o.factor)=c("No","Yes","Unsure")
levels(data$i_sing_use_eqps_c_o.factor)=c("No","Yes","Unsure")
levels(data$s_can_manage_c_o.factor)=c("Strongly disagree","Somewhat disagree","Neither agree nor disagree","Somewhat agree","Strongly agree")
levels(data$s_cont_mge_c_o.factor)=c("Strongly disagree","Somewhat disagree","Neither agree nor disagree","Somewhat agree","Strongly agree")
levels(data$s_ipc_skill_c_o.factor)=c("Strongly disagree","Somewhat disagree","Neither agree nor disagree","Somewhat agree","Strongly agree")
levels(data$s_received_training.factor)=c("Strongly disagree","Somewhat disagree","Neither agree nor disagree","Somewhat agree","Strongly agree")
levels(data$d_protect_yourself.factor)=c("[1]  Not at all","[2]","[3]","[4]","[5]","[6]","[7] Very much so")
levels(data$s_will_use_c_o.factor)=c("Strongly disagree","Somewhat disagree","Neither agree nor disagree","Somewhat agree","Strongly agree")
levels(data$s_is_straining_c_o.factor)=c("Strongly disagree","Somewhat disagree","Neither agree nor disagree","Somewhat agree","Strongly agree")
levels(data$s_is_proected.factor)=c("Strongly disagree","Somewhat disagree","Neither agree nor disagree","Somewhat agree","Strongly agree")
levels(data$s_can_protect_c_0.factor)=c("Strongly disagree","Somewhat disagree","Neither agree nor disagree","Somewhat agree","Strongly agree")
levels(data$s_can_followc_o.factor)=c("Strongly disagree","Somewhat disagree","Neither agree nor disagree","Somewhat agree","Strongly agree")
levels(data$s_can_don_c_o.factor)=c("Strongly disagree","Somewhat disagree","Neither agree nor disagree","Somewhat agree","Strongly agree")
levels(data$d_avoiding_infection.factor)=c("[1]  Extremely difficult","[2]","[3]","[4]","[5]","[6]","[7] Extremely easy")
levels(data$d_reccommendations.factor)=c("[1]  Not at all","[2]","[3]","[4]","[5]","[6]","[7] Very much so")
levels(data$hand_washing.factor)=c("Yes","No","Dont know")
levels(data$avoid_eyes_nose.factor)=c("Yes","No","Dont know")
levels(data$disinfectants.factor)=c("Yes","No","Dont know")
levels(data$staying_home.factor)=c("Yes","No","Dont know")
levels(data$balance_diet.factor)=c("Yes","No","Dont know")
levels(data$cover_mouth.factor)=c("Yes","No","Dont know")
levels(data$food_supp.factor)=c("Yes","No","Dont know")
levels(data$herbal_suppl.factor)=c("Yes","No","Dont know")
levels(data$not_travel.factor)=c("Yes","No","Dont know")
levels(data$using_algae.factor)=c("Yes","No","Dont know")
levels(data$caution_mail.factor)=c("Yes","No","Dont know")
levels(data$avoid_meat.factor)=c("Yes","No","Dont know")
levels(data$flu_shot.factor)=c("Yes","No","Dont know")
levels(data$exercising.factor)=c("Yes","No","Dont know")
levels(data$face_mask.factor)=c("Yes","No","Dont know")
levels(data$avoid_place_people.factor)=c("Yes","No","Dont know")
levels(data$antibiotics.factor)=c("Yes","No","Dont know")
levels(data$homeopathic.factor)=c("Yes","No","Dont know")
levels(data$quarantine.factor)=c("Yes","No","Dont know")
levels(data$hand_washing2.factor)=c("Yes","No","Does not apply")
levels(data$avoid_eyes2.factor)=c("Yes","No","Does not apply")
levels(data$desinfectants2.factor)=c("Yes","No","Does not apply")
levels(data$satying_home_sick.factor)=c("Yes","No","Does not apply")
levels(data$nt_aborad.factor)=c("Yes","No","Does not apply")
levels(data$herb_supp.factor)=c("Yes","No","Does not apply")
levels(data$food_supplements.factor)=c("Yes","No","Does not apply")
levels(data$covering_mouth.factor)=c("Yes","No","Does not apply")
levels(data$diet_balanced.factor)=c("Yes","No","Does not apply")
levels(data$avoid_close_cont.factor)=c("Yes","No","Does not apply")
levels(data$use_algae2.factor)=c("Yes","No","Does not apply")
levels(data$opening_mail.factor)=c("Yes","No","Does not apply")
levels(data$avoid_eating_meat.factor)=c("Yes","No","Does not apply")
levels(data$get_flu_shot.factor)=c("Yes","No","Does not apply")
levels(data$exercise_reg.factor)=c("Yes","No","Does not apply")
levels(data$wering_mask.factor)=c("Yes","No","Does not apply")
levels(data$avoid_people_place.factor)=c("Yes","No","Does not apply")
levels(data$atb.factor)=c("Yes","No","Does not apply")
levels(data$hm_drugs.factor)=c("Yes","No","Does not apply")
levels(data$self_quarantine.factor)=c("Yes","No","Does not apply")
levels(data$wash_hand.factor)=c("[1] Very inconvenient","[2]","[3]","[4]","[5]","[6]","[7] Very easy to do")
levels(data$p_family_washing.factor)=c("[1]  Strongly disagree","[2]","[3]","[4]","[5]","[6]","[7] Strongly agree")
levels(data$p_auth_wash.factor)=c("[1]  Strongly disagree","[2]","[3]","[4]","[5]","[6]","[7] Strongly agree")
levels(data$p_water_access.factor)=c("[1]  Strongly disagree","[2]","[3]","[4]","[5]","[6]","[7] Strongly agree")
levels(data$p_hand_freq.factor)=c("[1]  Strongly disagree","[2]","[3]","[4]","[5]","[6]","[7] Strongly agree")
levels(data$p_protect_others.factor)=c("[1]  Strongly disagree","[2]","[3]","[4]","[5]","[6]","[7] Strongly agree")
levels(data$p_avoid_crowded.factor)=c("[1]  Strongly disagree","[2]","[3]","[4]","[5]","[6]","[7] Strongly agree")
levels(data$p_author_crowded.factor)=c("[1]  Strongly disagree","[2]","[3]","[4]","[5]","[6]","[7] Strongly agree")
levels(data$p_avoid_social_contacts.factor)=c("[1]  Strongly disagree","[2]","[3]","[4]","[5]","[6]","[7] Strongly agree")
levels(data$p_protect_crowded.factor)=c("[1]  Strongly disagree","[2]","[3]","[4]","[5]","[6]","[7] Strongly agree")
levels(data$s_proto_exists_c_o.factor)=c("Strongly disagree","Somewhat disagree","Neither agree nor disagree","Somewhat agree","Strongly agree")
levels(data$s_can_access_ppe_c_o.factor)=c("Strongly disagree","Somewhat disagree","Neither agree nor disagree","Somewhat agree","Strongly agree")
levels(data$s_has_iso_fac.factor)=c("Strongly disagree","Somewhat disagree","Neither agree nor disagree","Somewhat agree","Strongly agree")
levels(data$s_know_cont_c_o.factor)=c("Strongly disagree","Somewhat disagree","Neither agree nor disagree","Somewhat agree","Strongly agree")
levels(data$s_get_supp_c_o.factor)=c("Strongly disagree","Somewhat disagree","Neither agree nor disagree","Somewhat agree","Strongly agree")
levels(data$a_vaccine_study.factor)=c("Yes","No","Dont know")
levels(data$a_novel_covid.factor)=c("[1] close to me","[2]","[3]","[4]","[5]","[6]","[7] or far away from me")
levels(data$a_novel_covid_worrying.factor)=c("[1]  Worrying","[2]","[3]","[4]","[5]","[6]","[7] Not worrying")
levels(data$a_spread_covid.factor)=c("[1]  slowly","[2]","[3]","[4]","[5]","[6]","[7]Spreading fast")
levels(data$a_think_about.factor)=c("[1]  all the time","[2]","[3]","[4]","[5]","[6]","[7]Something I almost never think about")
levels(data$a_novel_covid_fear.factor)=c("[1]  Fear-inducing","[2]","[3]","[4]","[5]","[6]","[7] Not fear-inducing")
levels(data$t_public_channels.factor)=c("[1]  Very little trust","[2]","[3]","[4]","[5]","[6]","[7] A great deal of trust")
levels(data$s_daily_newspapers.factor)=c("[1]  Very little trust","[2]","[3]","[4]","[5]","[6]","[7] A great deal of trust")
levels(data$s_conv_family.factor)=c("[1]  Very little trust","[2]","[3]","[4]","[5]","[6]","[7] A great deal of trust")
levels(data$s_conv_colleagues.factor)=c("[1]  Very little trust","[2]","[3]","[4]","[5]","[6]","[7] A great deal of trust")
levels(data$s_consult_hcw.factor)=c("[1]  Very little trust","[2]","[3]","[4]","[5]","[6]","[7] A great deal of trust")
levels(data$s_private_tel.factor)=c("[1]  Very little trust","[2]","[3]","[4]","[5]","[6]","[7] A great deal of trust")
levels(data$s_websites.factor)=c("[1]  Very little trust","[2]","[3]","[4]","[5]","[6]","[7] A great deal of trust")
levels(data$s_journals.factor)=c("[1]  Very little trust","[2]","[3]","[4]","[5]","[6]","[7] A great deal of trust")
levels(data$i_public_television.factor)=c("[1]Never","[2]","[3]","[4]","[5]","[6]","[7] Very often")
levels(data$s_private_radio.factor)=c("[1]  Very little trust","[2]","[3]","[4]","[5]","[6]","[7] A great deal of trust")
levels(data$s_social_media.factor)=c("[1]  Very little trust","[2]","[3]","[4]","[5]","[6]","[7] A great deal of trust")
levels(data$s_search_engines.factor)=c("[1]  Very little trust","[2]","[3]","[4]","[5]","[6]","[7] A great deal of trust")
levels(data$s_public_station.factor)=c("[1]  Very little trust","[2]","[3]","[4]","[5]","[6]","[7] A great deal of trust")
levels(data$i_daily_newspapers.factor)=c("[1]Never","[2]","[3]","[4]","[5]","[6]","[7] Very often")
levels(data$i_conv_family.factor)=c("[1]Never","[2]","[3]","[4]","[5]","[6]","[7] Very often")
levels(data$i_websites.factor)=c("[1]Never","[2]","[3]","[4]","[5]","[6]","[7] Very often")
levels(data$i_private_station_tel.factor)=c("[1]Never","[2]","[3]","[4]","[5]","[6]","[7] Very often")
levels(data$i_consult_hcw.factor)=c("[1]Never","[2]","[3]","[4]","[5]","[6]","[7] Very often")
levels(data$i_conv_colleagues.factor)=c("[1]Never","[2]","[3]","[4]","[5]","[6]","[7] Very often")
levels(data$i_journals.factor)=c("[1]Never","[2]","[3]","[4]","[5]","[6]","[7] Very often")
levels(data$i_private_station_radio.factor)=c("[1]Never","[2]","[3]","[4]","[5]","[6]","[7] Very often")
levels(data$i_search_engines.factor)=c("[1]Never","[2]","[3]","[4]","[5]","[6]","[7] Very often")
levels(data$i_social_media.factor)=c("[1]Never","[2]","[3]","[4]","[5]","[6]","[7] Very often")
levels(data$i_public_station_radio.factor)=c("[1]Never","[2]","[3]","[4]","[5]","[6]","[7] Very often")
levels(data$local_context.factor)=c("I already did that","I plan to do that","I dont plan to do that")
levels(data$medecines.factor)=c("I already did that","I plan to do that","I dont plan to do that")
levels(data$supplies.factor)=c("I already did that","I plan to do that","I dont plan to do that")
levels(data$medication.factor)=c("I already did that","I plan to do that","I dont plan to do that")
levels(data$large_scale_supplies.factor)=c("I already did that","I plan to do that","I dont plan to do that")
levels(data$large_scale_things.factor)=c("I already did that","I plan to do that","I dont plan to do that")
levels(data$large_scale_disinfectants.factor)=c("I already did that","I plan to do that","I dont plan to do that")
levels(data$avoid_people.factor)=c("I already did that","I plan to do that","I dont plan to do that")
levels(data$avoid_visits_fam.factor)=c("I already did that","I plan to do that","I dont plan to do that")
levels(data$cancelled_bus_trip.factor)=c("I already did that","I plan to do that","I dont plan to do that")
levels(data$cancelled_hol_trip.factor)=c("I already did that","I plan to do that","I dont plan to do that")
levels(data$cancelled_fligths.factor)=c("I already did that","I plan to do that","I dont plan to do that")
levels(data$social_events.factor)=c("I already did that","I plan to do that","I dont plan to do that")
levels(data$no_visit_child.factor)=c("I already did that","I plan to do that","I dont plan to do that")
levels(data$no_visit_fam.factor)=c("I already did that","I plan to do that","I dont plan to do that")
