--
-- PostgreSQL database dump (transcripts generated via whisper and contain errors.)
--

-- Dumped from database version 16.4 (Debian 16.4-1.pgdg120+2)
-- Dumped by pg_dump version 16.4 (Ubuntu 16.4-1.pgdg24.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: pg_ivm_immv; Type: TABLE DATA; Schema: pg_catalog; Owner: postgres
--

COPY pg_catalog.pg_ivm_immv (immvrelid, viewdef, ispopulated) FROM stdin;
\.


--
-- Data for Name: talk_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.talk_groups (id, "decimal", description, alpha_tag, category, tag, active, inserted_at, updated_at) FROM stdin;
145	7690	Ride On - Buses	MC RideOn 7690	Ride On	Transportation	t	2024-10-09 05:16:53	2024-10-09 05:16:53
146	7705	Ride On - Buses	MC RideOn 7705	Ride On	Transportation	t	2024-10-09 05:16:53	2024-10-09 05:16:53
147	7710	Ride On - Buses	MC RideOn 7710	Ride On	Transportation	t	2024-10-09 05:16:53	2024-10-09 05:16:53
148	7715	Ride On - Buses	MC RideOn 7715	Ride On	Transportation	t	2024-10-09 05:16:53	2024-10-09 05:16:53
149	7695	Ride On - Busses	MC RideOn 7695	Ride On	Transportation	t	2024-10-09 05:16:53	2024-10-09 05:16:53
150	7100	Ride On - Supervisors	MC RideOnSup7100	Ride On	Transportation	t	2024-10-09 05:16:53	2024-10-09 05:16:53
151	7720	Ride On - Supervisors	MC RideOnSup7720	Ride On	Transportation	t	2024-10-09 05:16:53	2024-10-09 05:16:53
152	7730	Ride On - Supervisors	MC RideOnSup7730	Ride On	Transportation	t	2024-10-09 05:16:53	2024-10-09 05:16:53
144	7700	Ride On - Administration	MC Ride On Admin	Ride On	Transportation	t	2024-10-09 05:16:52	2024-10-09 05:16:52
\.


--
-- Data for Name: calls; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.calls (id, call_length, start_time, stop_time, talk_group_id, talkgroup_num, transcript) FROM stdin;
2	5	2024-10-09 05:25:47	2024-10-09 05:25:53	144	7700	More and six percent.
3	7	2024-10-09 05:25:55	2024-10-09 05:26:03	144	7700	Ekkert Lósa vitin þegar hvað þeir meina enn. Já, þess að þess að þess að þess að þess að þess að þess að þess að þess.
116	3	2024-10-09 06:02:30	2024-10-09 06:02:35	144	7700	I wish that if I had lunch together.
120	6	2024-10-09 06:02:39	2024-10-09 06:02:48	144	7700	Number four. Four goals. Have a good night. Good night. See you tomorrow.
430	11	2024-10-09 07:58:23	2024-10-09 07:58:43	144	7700	Good morning, sir. Good morning, Mr. Yaha. I got vehicle 7143, personal cell.
518	1	2024-10-09 08:28:17	2024-10-09 08:28:19	144	7700	That was fantastic.
519	1	2024-10-09 08:28:30	2024-10-09 08:28:31	144	7700	I don't want it here.
375	2	2024-10-09 07:46:56	2024-10-09 07:46:58	144	7700	How's the 80s?
431	7	2024-10-09 07:58:44	2024-10-09 07:58:52	144	7700	Copy. Copy that, Mr. Bright. Uh, yes. Three and four, please. Three and four.
432	3	2024-10-09 07:58:53	2024-10-09 07:58:56	144	7700	Three, four, copy. Beautiful.
383	6	2024-10-09 07:47:27	2024-10-09 07:47:36	144	7700	Copy, sir. Copy that. As usual. One, please. One and two. One and two for now. Copy. Simple.
378	5	2024-10-09 07:47:15	2024-10-09 07:47:24	144	7700	Good morning, sir. Hey, good morning. I'm Penny with 1695.
387	8	2024-10-09 07:47:56	2024-10-09 07:48:05	144	7700	Good morning, I'm ten-eight weeks. It's sixteen seventy-seven and I'm meeting myself.
389	11	2024-10-09 07:48:09	2024-10-09 07:48:20	144	7700	16, 7, 8, 7. Help me with a zone of... In a second, in a second. 7, 8, 7, 8.
520	4	2024-10-09 08:28:34	2024-10-09 08:28:37	144	7700	Tonight, Vehicle 8197 Personal Sale.
429	3	2024-10-09 07:58:05	2024-10-09 07:58:08	144	7700	Spring Central.
385	6	2024-10-09 07:47:46	2024-10-09 07:47:53	144	7700	Good morning, Central. This is Thelma. Good morning.
521	6	2024-10-09 08:28:41	2024-10-09 08:28:47	144	7700	Capita. Zone 2, please. Zone 2, Mr. Rivera. Zone 1.
390	2	2024-10-09 07:48:22	2024-10-09 07:48:25	144	7700	Thank you.
712	29	2024-10-09 09:12:45	2024-10-09 09:13:18	144	7700	He came in and took the right instead of going all the way around and pulling up to the bus stop. Even though nobody was there still, he obviously been doing it every day. So you say he didn't pull into the 12 Bay? He pulled over to the Metro Bay on the other side. And I was trying to walk up to him to catch him. You know, he waited. But when nobody had the 12 Bay, then he took off in service in the 12. But I say obviously it's something he's been doing on the regular. All right, copy.
891	1	2024-10-09 10:06:56	2024-10-09 10:06:58	144	7700	We're in a century.
919	3	2024-10-09 10:09:53	2024-10-09 10:09:58	144	7700	Uh, Mobile 7.
1168	5	2024-10-09 11:02:03	2024-10-09 11:02:08	144	7700	Yeah, I'm wanting to the bus from this end, too, so I'll let you know.
1170	2	2024-10-09 11:02:11	2024-10-09 11:02:14	144	7700	To hold up.
1203	27	2024-10-09 11:06:21	2024-10-09 11:06:50	145	7690	So the first trip, head back to the station, get another bus, and continue the trip. Yeah, because you're getting ready to go back to Bethesda. Well, because we don't have no switch for you right now, no standbys. So just keep, when you get back, just turn the bus off. When you get to Bethesda, do me a favor. Turn it off, wait a couple of minutes, and turn it back on. Let's see what happens. 10-4.
539	3	2024-10-09 08:32:33	2024-10-09 08:32:36	144	7700	ERROR: TRANSCRIPTION_TIMEOUT
2155	3	2024-10-09 12:48:26	2024-10-09 12:48:30	144	7700	Welcome to Central. Welcome to...
894	8	2024-10-09 10:07:04	2024-10-09 10:07:14	152	7730	Good morning. Revise 10-8. We are ready to 26, person 2.
896	2	2024-10-09 10:07:20	2024-10-09 10:07:22	144	7700	Yeah, Mr Graham.
1199	15	2024-10-09 11:06:04	2024-10-09 11:06:20	145	7690	That is understood. At this time, when you get back to Bethesda Station, just head back to the depot and shop and then get another bus and pull out your trip.
1207	1	2024-10-09 11:07:31	2024-10-09 11:07:32	145	7690	ERROR: TRANSCRIPTION_TIMEOUT
716	2	2024-10-09 09:13:36	2024-10-09 09:13:38	144	7700	Five, three, two, six.
791	2	2024-10-09 09:40:59	2024-10-09 09:41:01	145	7690	5-8-4-4.
1165	63	2024-10-09 11:00:16	2024-10-09 11:01:34	144	7700	Should I follow? It's your car, man. And then, uh, or not. It doesn't matter. Hey, have you pulled off yet? Yeah, he mentioned off man. That's the guy that's the one. Hey, yeah, okay. He be okay. If he has any problems, he knows how to contact us, so let's hand it back. It's okay. You don't have to follow. Thank you. Thank you.
1196	21	2024-10-09 11:05:38	2024-10-09 11:06:03	145	7690	Well, that is a good question because I can't give you that answer. So do me a favor and just, is the bus cut off yet? Well, the light keeps coming on, blinking, and it'll be in the check engine. I don't want to damage the engine or nothing in the bus. Maybe overheating or whatever.
923	15	2024-10-09 10:10:00	2024-10-09 10:10:20	144	7700	Tell them all. 747 is at Lake Forest, correct? It's not here yet. I'm looking at it. Tell them all. It's got to be there.
1341	25	2024-10-09 11:25:17	2024-10-09 11:25:49	149	7695	Hey, can we do something about these buses laying over at Jordan Town Transit Center? Because I got the 97 and the 51 bus back. Good morning, 4091. I'm sorry, good morning. It's been a rough morning. I'll copy 1040. Do you have a bus number right here? 5038.
719	38	2024-10-09 09:13:41	2024-10-09 09:14:26	145	7690	Go ahead to 356. 356, yeah. I understand when you did hit in Tacoma, you have to come all around Carroll Street and pull into 12 Bay, into your bay. That's 12 Bay across the street, 10-4. 10-4, but nobody on the bus stops. Doesn't matter. That's how the process works. You pull into your bay and you pull out from the 12 Bay. Not the Metro Bay. We're not Metro. We're ride on. So we have our own bus bay, 10-4. 10-4.
925	3	2024-10-09 10:10:24	2024-10-09 10:10:30	144	7700	Let me check.
1189	37	2024-10-09 11:04:34	2024-10-09 11:05:10	152	7730	Eventually, ride-run operators, ride-run operators, at the tip of the hour, follow up your follow-up turns using your mirrors. Anytime you make a turn or go through a curve, you should check your mirrors. Checking your mirror will let you know the available space around your bus. Making the turn at the correct speed and checking your mirrors will eliminate accidents. Why? To know your surroundings. Center time. 7.05.
1192	21	2024-10-09 11:05:13	2024-10-09 11:05:37	145	7690	55. 5055 Route 736. The check engine light is coming on on this vehicle. And I see by the manifest it was written up on this second. I want to know why no one has taken the initiative to shop this bus.
1204	4	2024-10-09 11:06:51	2024-10-09 11:06:56	152	7730	Go ahead, 343. Go ahead. So you don't want me to take you back to the shop?
1205	16	2024-10-09 11:06:58	2024-10-09 11:07:20	145	7690	505-5055. All right, go ahead. Yeah, so now I don't want you to take it back. So just when you get to Bethesda, shut it off for a few minutes and cut it back on. Let's see what happens.
551	2	2024-10-09 08:39:43	2024-10-09 08:39:46	145	7690	41, 48.
552	3	2024-10-09 08:39:47	2024-10-09 08:39:50	145	7690	4148, 4148.
554	4	2024-10-09 08:39:58	2024-10-09 08:40:04	145	7690	4148, bus 4148.
558	3	2024-10-09 08:40:42	2024-10-09 08:40:45	144	7700	ERROR: TRANSCRIPTION_TIMEOUT
560	19	2024-10-09 08:40:30	2024-10-09 08:40:53	145	7690	4151. Good morning, Central. Radio check. 4151. Morning, sir. Line of clear. And tell me what I don't know. I love it. I love it. 10-4. Thank you. 10-4.
778	19	2024-10-09 09:36:37	2024-10-09 09:36:58	144	7700	I followed him and we got the Shady Grove Road. He's heading towards the Mid County and he said he needs a boss. 10-4. That the boss should meet him at Lake Forest. 10-4. Working on that.
782	17	2024-10-09 09:38:00	2024-10-09 09:38:28	144	7700	Good morning, sir. Yes, good morning. Ten-eight. Eighty-three-oh-nine. Eighty-three-oh-nine. Take out. Zone five, please. Zone five. Zone five. Mobile seven to me.
942	4	2024-10-09 10:14:18	2024-10-09 10:14:24	144	7700	Mobile 7, the switch has been made. 10-4. 10-4.
989	14	2024-10-09 10:21:21	2024-10-09 10:21:37	145	7690	5-0-3-2. Good morning, Central. 5-0-3-2, radio check. Loud and clear, 3-2-10-4. 10-4.
735	16	2024-10-09 09:25:03	2024-10-09 09:25:25	145	7690	4131. 4131 Central. Yes, sir. You doing a radio check? You loud and clear on that, 10-4. Roger that. 10-4. 10-4. Roger that.
737	1	2024-10-09 09:27:17	2024-10-09 09:27:20	144	7700	All right, man.
1343	10	2024-10-09 11:25:53	2024-10-09 11:26:04	149	7695	He's operating that bus, did you notice? Yeah, and he came up to my bus and was like another bus was in his bus bay, so what do I want him to do?
927	12	2024-10-09 10:10:40	2024-10-09 10:10:56	144	7700	It's now that the bus stop is inside the Lake Forest on the roadway. 750 right there to do the switch with them.
934	20	2024-10-09 10:11:51	2024-10-09 10:12:19	144	7700	I've seen it. What is the message I should give to him? Nothing. I just didn't want him. The other operator was looking for him. I didn't want him to pull off again. I tell the other operator to just come here. He is there. He's behind him. 750.
971	17	2024-10-09 10:18:10	2024-10-09 10:18:33	145	7690	2-0-3-9. Good morning. This is, uh, 0-3-9. Uh, training bus. I'm getting ready to take off for Silver Spring. Okay. Copy. 10-4, training bus. Be safe. Remember, get the big picture. 10-4. 10-4.
579	15	2024-10-09 08:46:45	2024-10-09 08:47:05	149	7695	25. 2035. Good morning, 2035. Can I have your runner ID number so I can log you on, please? Run is 209. ID is 2994.
740	1	2024-10-09 09:27:42	2024-10-09 09:27:44	144	7700	Thank you.
767	17	2024-10-09 09:32:23	2024-10-09 09:32:44	144	7700	Mobile 4. Good morning, Mobile 4. Mobile 4, bus 2008. He is at the intersection. He's on Democracy at Gainsborough Road. He had an automatic shutdown. Copy and route. Thank you.
781	2	2024-10-09 09:37:49	2024-10-09 09:37:51	144	7700	So I'm ready to central.
935	3	2024-10-09 10:12:39	2024-10-09 10:12:46	144	7700	Don't worry. They doing the switch. Tell them all. No problem.
1021	2	2024-10-09 10:30:54	2024-10-09 10:30:56	145	7690	6011.
1033	17	2024-10-09 10:35:52	2024-10-09 10:36:12	149	7695	Good morning, 4094. We copy you loud and clear at 6.36 a.m. You have a safe morning. Thank you. Received. You have a great day, too. Thank you.
1026	4	2024-10-09 10:31:53	2024-10-09 10:31:59	145	7690	When you get to Burnsville, look for 600...
1258	1	2024-10-09 11:14:34	2024-10-09 11:14:36	144	7700	Happy.
3344	5	2024-10-09 14:41:02	2024-10-09 14:41:07	149	7695	Uh, how did you know what I could do lately, Paul? 10-4.
779	17	2024-10-09 09:36:57	2024-10-09 09:37:18	149	7695	4047. 4047. I see you keying up, but nothing coming through. If it's safe to do so, give us a landline, please.
1256	5	2024-10-09 11:14:25	2024-10-09 11:14:30	144	7700	Mobile 4, Mobile 4, could you get sent your line line please?
1297	1	2024-10-09 11:20:19	2024-10-09 11:20:22	145	7690	2-0-1-3
1328	4	2024-10-09 11:24:02	2024-10-09 11:24:06	144	7700	Mr. Bright, mobile 4.
1358	14	2024-10-09 11:26:28	2024-10-09 11:26:47	144	7700	Yeah, Mobile 6. Be advised, it is in the shop on the left. 10-4. I have a 10-4. I asked him to bring it down, so I just pulled.
581	5	2024-10-09 08:47:07	2024-10-09 08:47:14	149	7695	2-9-9-4 and 2-0-9. That's your turn 4. Thank you.
736	4	2024-10-09 09:27:10	2024-10-09 09:27:16	144	7700	Muggle 7th or Central.
1012	3	2024-10-09 10:29:51	2024-10-09 10:29:54	144	7700	365 365 365
1027	6	2024-10-09 10:32:12	2024-10-09 10:32:18	145	7690	6-0-1-1 when you get to Burton's video look for 6-0-0-6-10-4
763	2	2024-10-09 09:32:17	2024-10-09 09:32:20	144	7700	Number four.
1296	18	2024-10-09 11:19:54	2024-10-09 11:20:12	145	7690	So go straight, right? Go up around and turn around and come back down on Georgia Avenue and make the left or her just heel drive, and then you back on road.
1308	14	2024-10-09 11:21:27	2024-10-09 11:21:45	145	7690	855. Good morning, Central. Operator 3342, doing a phone check for safety training. Radio check, loud and clear, 10-4. Copy that. Thank you, Central.
1309	8	2024-10-09 11:21:43	2024-10-09 11:21:54	144	7700	Mobile 3, go ahead. Yeah, maybe you have some tape that you can use in case the key doesn't work.
1437	2	2024-10-09 11:35:35	2024-10-09 11:35:37	144	7700	What was it, what was it?
585	34	2024-10-09 08:48:58	2024-10-09 08:49:37	149	7695	4-7. Good morning, 4-7. Good morning. I'm going to need a bus. I'm going to run 2-7. I have a mirror that won't stay still. It's not locked in place. I guess it had tape on it or something. Maybe they removed it, but this thing just keeps moving back and forth. 10-4. Let me look at your running. Let me call the best and see what I can do for you. 10-4? Okay, 10-4. I'm trying to pull this run out. 10-4, thank you. Run 2-7.
744	8	2024-10-09 09:28:04	2024-10-09 09:28:16	149	7695	5042. 5042. Yep, doing a radio check. Good for you. Have a safe morning.
780	3	2024-10-09 09:37:36	2024-10-09 09:37:39	144	7700	ERROR: TRANSCRIPTION_TIMEOUT
1001	3	2024-10-09 10:26:59	2024-10-09 10:27:03	145	7690	2037. 2037.
1292	10	2024-10-09 11:19:41	2024-10-09 11:19:52	145	7690	Hey, look like you want to go up, go around the turnabout, come back, make your left on gold mine, use old Baltimore road.
1303	8	2024-10-09 11:21:06	2024-10-09 11:21:14	144	7700	I'm over three. I'll be heading that way now. Copy, Mr. Bigger. Copy now. Copy now.
1314	15	2024-10-09 11:22:02	2024-10-09 11:22:24	144	7700	That's a negative. Yeah, try with the key and let me know so we can proceed otherwise. Five, mobile five. Tenfold. Take it, sir. Guys, number five.
1320	17	2024-10-09 11:22:28	2024-10-09 11:22:45	144	7700	I'm over five. Hey, Sobriety, head up Georgia Avenue to Goldmine's Road and Route 53 and the sister buses on getting the turnaround of Goldmine is blocked off right now. Route 52 on... 53, I'm sorry.
1422	32	2024-10-09 11:33:17	2024-10-09 11:33:57	145	7690	42. 50-42. 50-42. Hello? Yeah, my friend. Carlos, when you're doing your 53, you're going to have to bypass Goldmine. So just go up to the next intersection, turn about to the turnabout, and come back down Georgia. 10-4. What am I avoiding again? Goldmine. Goldmine. You can't make that left to go to the neighborhood because it's blocked off due to a fire. And firetruck.
1003	18	2024-10-09 10:27:07	2024-10-09 10:27:29	145	7690	Yeah, go ahead. 2037, yeah. In the near future, please take the bus that assigned to your block. If there's something wrong with it, please report it to the yard man, 10-4. 10-4.
738	14	2024-10-09 09:27:21	2024-10-09 09:27:37	144	7700	He will definitely need a burn switch later on because the tape will not hold it until he finishes his run.
1009	6	2024-10-09 10:29:30	2024-10-09 10:29:38	144	7700	I just pulled up behind him, Captain. I let him go. I can't go up here. He's bad, but he's still sitting here.
1010	2	2024-10-09 10:29:39	2024-10-09 10:29:40	144	7700	God, be careful.
777	14	2024-10-09 09:36:27	2024-10-09 09:36:48	149	7695	4047.
1282	48	2024-10-09 11:17:22	2024-10-09 11:18:22	145	7690	Yeah, 5052. If you call them all gold mine, we're working on that right now. Yeah, 025. Couldn't turn down into gold mine due to fire and police had the street blocked off. 10-4? Yeah, what did you take? Bonifant? 10-9. Did you take Bonifant? Did I take what? Bonifant Street. Which street did you use to get around it? You can't get around it. Oh, so you stayed on Georgia Avenue? Yeah, I had to turn around into the senior citizen place and get turned around. Okay, copy 10-4. We're working on a D204 right now. Stay on Georgia. Just use Georgia.
1052	12	2024-10-09 10:41:56	2024-10-09 10:42:13	145	7690	40-55. 40-55. Operating barge. Yes, sir. A 40-50 seatbelt won't come out, man. What's going on with the seatbelt?
602	3	2024-10-09 08:51:54	2024-10-09 08:51:59	149	7695	727. 47.
605	35	2024-10-09 08:52:01	2024-10-09 08:52:43	149	7695	Go ahead. Okay, I can hear you now. You can have a coordinator. Meet me with some tape. Maybe we can tape it up. I don't know if they got people to bring me a bus or not. I ain't got time to get to the station because I'm a little late already. I can tape it up and deal with it. Okay, 10-4. Let me see if we have any available coordinators that can bring you. Yeah, they can just meet me and show you growth. I can deal with it. It's not moving right now. Okay, 10-4. I'm going to send a coordinator to you. Thank you.
612	4	2024-10-09 08:54:22	2024-10-09 08:54:31	144	7700	Moving 7, I'm on Queen Farchad route.
615	2	2024-10-09 08:54:36	2024-10-09 08:54:40	144	7700	10-4.
621	21	2024-10-09 08:54:46	2024-10-09 08:55:08	144	7700	Can you get into Lake Forest and look for bus 747? Do you have any tape that you can tip? A mirror? I have tape. 10-4. Look for bus 747 in Lake Forest. Hold on. Let me give you a time.
624	14	2024-10-09 08:55:16	2024-10-09 08:55:32	144	7700	He should be in Lake Forest around 5.09, but he's running a little late, Mr. Salomon. 5.09. I'm running late. 7.47. 10.4. 10.4. Thank you.
1004	6	2024-10-09 10:27:50	2024-10-09 10:27:57	144	7700	Mobile for the shop at 10-5. I'm taking the relief operator back to base. 10-4, thank you.
635	31	2024-10-09 08:57:43	2024-10-09 08:58:31	144	7700	Good morning, sir. Good morning. Vehicle 1515. I'm 10-8 and a personal set. Copy, sir. Take zone 3. Zone 3, Mr. Bright, zone 4, please. Zone 3, zone 4. Zone 3, Mr. Bright, is going to be on 4. I copy. Zone 3. Zone 3, yes, sir. Zone 4. Zone 4, copy. Zone 4, please.
776	5	2024-10-09 09:36:28	2024-10-09 09:36:34	144	7700	Move over 7 to the center. Go ahead, move over 7.
655	2	2024-10-09 09:01:01	2024-10-09 09:01:05	149	7695	Thank you.
3345	4	2024-10-09 14:41:07	2024-10-09 14:41:11	145	7690	46 years to track the trailer right there.
1005	5	2024-10-09 10:28:52	2024-10-09 10:29:00	145	7690	six zero zero six six zero zero six
1007	5	2024-10-09 10:29:29	2024-10-09 10:29:33	145	7690	Turn four.
1023	2	2024-10-09 10:31:01	2024-10-09 10:31:04	145	7690	six zero one one
1299	4	2024-10-09 11:20:36	2024-10-09 11:20:39	144	7700	Any unit, mobile 3 or mobile 4?
1067	3	2024-10-09 10:44:03	2024-10-09 10:44:06	144	7700	ERROR: TRANSCRIPTION_TIMEOUT
1306	3	2024-10-09 11:21:35	2024-10-09 11:21:38	144	7700	Mr. Baker, number three.
5312	3	2024-10-09 17:39:18	2024-10-09 17:39:26	144	7700	Mobile 3, the center.
784	33	2024-10-09 09:38:33	2024-10-09 09:39:15	144	7700	Yes, Mr. Salomon? When we got to Shady Grove, when he made the right turn to head into Mid County, he told me he needed a bus to meet him at Shady Grove. So, what do we do? You mean Lake Forest, not Shady Grove, correct? Yes, Lake Forest. We are trying to work on that. We are trying to work on it. Copy? Time for. Thank you. I will have somebody there at 604.
1006	16	2024-10-09 10:29:06	2024-10-09 10:29:23	145	7690	6006. 6006. Yes, sir. So you are in the wrong spot. You're supposed to be in Burtonville. The switch was supposed to happen in Burtonville, not Briggs Chaney.
793	21	2024-10-09 09:41:33	2024-10-09 09:42:05	145	7690	3-3-8-2. You say you on block 2053, correct? Block 2053? Yes. Okay, let me work on that for you, but in the meantime, just tell the people what route you doing and follow your run sheet for me, please. 10-4.
631	3	2024-10-09 08:57:37	2024-10-09 08:57:40	144	7700	Very good, sir.
803	8	2024-10-09 09:44:24	2024-10-09 09:44:35	144	7700	Coordinator Edwards to Central. Good morning, Mr. Edwards. Good morning. 10-8, 12-20, personal sale.
1055	19	2024-10-09 10:42:14	2024-10-09 10:42:34	145	7690	Uh, you tell me. I don't know why that won't come out. Let's stop. Turn the bus off and, uh, power the bus off and, uh, power back on. It might be because of the brakes or something. Just turn the bus off, turn the back on, let's see what happens.
1056	8	2024-10-09 10:42:35	2024-10-09 10:42:46	145	7690	Stop giving these problem buses, man. Okay, copy. 10-4, will do.
1013	3	2024-10-09 10:29:59	2024-10-09 10:30:03	144	7700	I'll be right back.
788	17	2024-10-09 09:39:42	2024-10-09 09:40:06	149	7695	Good morning. This is 4054. There's a dead deer in the road at Briggs Road and Layhill Road. You said Briggs and Layhill? 10-4. 10-4. Thank you for that. Thank you.
796	3	2024-10-09 09:42:49	2024-10-09 09:42:52	144	7700	4 central.
797	17	2024-10-09 09:42:54	2024-10-09 09:43:11	145	7690	Yeah, my bus is having issues switching from gear to gear. It's getting stuck at 30 miles per hour, and I can't go up any hills. I lose power when I'm going up a hill.
1014	16	2024-10-09 10:29:57	2024-10-09 10:30:17	145	7690	Good morning, 5365, radio check. Ah, loud and clear this morning. You have a good day, 10-4. 10-4, thank you, likewise.
829	3	2024-10-09 09:50:47	2024-10-09 09:50:51	149	7695	Good morning, 4041.
1025	3	2024-10-09 10:31:49	2024-10-09 10:31:53	145	7690	Yeah, 60011.
1050	28	2024-10-09 10:40:45	2024-10-09 10:41:19	144	7700	Yeah, go ahead. Go ahead. I'm over 2.2. Um, Colesville Road headed your way. Copy that. Uh, we have, uh, 606 in my south end. Where did you get a 10-4? 10-4, 10-4. Yeah, he's headed your way. He's having a little, uh, he can't go that fast. So, yeah, he be there. Copy that.
786	4	2024-10-09 09:39:18	2024-10-09 09:39:23	144	7700	Thank you.
652	12	2024-10-09 09:00:47	2024-10-09 09:01:01	149	7695	Good morning, 4132. We copy you loud and clear at 5am. You have a safe morning.
790	4	2024-10-09 09:40:43	2024-10-09 09:40:53	145	7690	844-844-5844.
816	6	2024-10-09 09:49:04	2024-10-09 09:49:11	144	7700	Mr. Bride, boss 5046 is on his way to him, please.
1040	3	2024-10-09 10:38:34	2024-10-09 10:38:36	144	7700	583, 583.
1046	4	2024-10-09 10:40:27	2024-10-09 10:40:31	144	7700	Graham, Jim.
1264	16	2024-10-09 11:14:58	2024-10-09 11:15:15	145	7690	2-0-1-3. I'm on the Central Bus 2013. I'm doing the 53 route. I'm making it up on Goldmine. I'm supposed to make it up on Goldmine, but it's the accident right there on Goldmine. I just need a detail route.
1064	3	2024-10-09 10:43:37	2024-10-09 10:43:39	144	7700	ERROR: TRANSCRIPTION_TIMEOUT
1427	3	2024-10-09 11:34:24	2024-10-09 11:34:27	144	7700	Uh, yeah, careful.
1268	11	2024-10-09 11:15:19	2024-10-09 11:15:32	145	7690	Seems like that's closed on both directions, Mo. Um, 10-5, okay? Okay, 10-4.
804	6	2024-10-09 09:44:38	2024-10-09 09:44:46	144	7700	Copy this. Take, uh, Zone 8, please. Zone 8. Copy that.
795	4	2024-10-09 09:42:45	2024-10-09 09:42:50	145	7690	6-0-1-1. 11 in central.
800	56	2024-10-09 09:43:15	2024-10-09 09:44:19	145	7690	All right, do me a favor. Shut it down for a little while. You'll see you on Gateshead Manor Way up in Briggs Chaney and do a hard reset. Let's see what happens. 10-4. I did that. I did that at Briggs Chaney. I can do it again for you. I sat there for like three minutes and turned it back on. Same thing. And I did it on the ICC, too. Okay. 10-4. Let me work on a bus switch. Before you see if I can get you another bus, okay? But in the meantime, just go ahead, because the bus hasn't cut off, hasn't it? No, it hasn't cut off. I leave out of here at 46, so I can do my trip to Silver Spring. Okay, copy. 10-4, yeah. Just go ahead and continue on, and we'll work on getting you another bus. 10-4? 10-4.
836	2	2024-10-09 09:53:15	2024-10-09 09:53:17	144	7700	We'll go for a central.
1143	4	2024-10-09 10:58:18	2024-10-09 10:58:23	144	7700	Best wish in progress.
792	23	2024-10-09 09:41:06	2024-10-09 09:41:32	145	7690	Good morning. This is bus 5844, run number 2053. This is Tracy Brown. Now I'm having a problem signing in. The bus won't let me put the bus route on. Yeah, you're not logged on. What's your ID number?
838	1	2024-10-09 09:53:54	2024-10-09 09:53:55	144	7700	All right. Copy that.
839	12	2024-10-09 09:54:29	2024-10-09 09:54:46	144	7700	Mobile 4, is that bus in a safe location? That's negative. We got the triangles out, but it's right in the middle of the street on Gainesboro. Turn 4.
1118	2	2024-10-09 10:52:28	2024-10-09 10:52:30	145	7690	5-7-3-7.
685	6	2024-10-09 09:09:01	2024-10-09 09:09:09	144	7700	I'm ready for him, yeah.
686	19	2024-10-09 09:09:18	2024-10-09 09:09:43	144	7700	We only spoke for one minute. Turn 4. Let me get back to him and tell him to hold up at the next stop. Turn 4. It's already on Goshen. It's driving very fast.
690	18	2024-10-09 09:10:21	2024-10-09 09:10:40	149	7695	4-7. 4-7, can you stop at the next bus stop, please? I got a coordinator right behind you. Okay, if the coordinator wants to stop at the bus, he should stay in the bus stop, not in the daggone parking lot. I'm trying to keep moving. I'm running a little late.
5313	2	2024-10-09 17:39:30	2024-10-09 17:39:32	144	7700	Call Henry.
818	40	2024-10-09 09:48:56	2024-10-09 09:49:46	145	7690	6-0-1-1? Go ahead. Question. Why didn't you take the bus that was assigned to your block, 6-0-14? 6-0-14 was blocked. Oh, yeah. See? Okay. We're going to get you a bus switch, but it's not going to happen until you get back to Burtonville. 10-4? 10-4. Write that up. Write that up in the VCR so they can shop that bus. 10-4.
837	20	2024-10-09 09:53:23	2024-10-09 09:53:51	144	7700	Yeah, I think we're going to need the shop out here. Try it from the front and the back, and I'm not getting anything. I'm turning over at all. No, I didn't copy that. I think it's not turning over at all. That's negative. 10-4, look for bus 5046. It should be there momentarily.
843	4	2024-10-09 09:56:17	2024-10-09 09:56:21	149	7695	Good morning. Bear with me a second.
1288	2	2024-10-09 11:19:07	2024-10-09 11:19:09	145	7690	Two zero one three.
1133	14	2024-10-09 10:55:58	2024-10-09 10:56:13	145	7690	I have no idea, Mr. Creel. Just continue on. Follow your run sheet for me, please. 10-4. 10-4. I am doing so. We're just checking. Thank you.
687	2	2024-10-09 09:09:45	2024-10-09 09:09:47	144	7700	I have 10 flights out of the month.
1290	17	2024-10-09 11:19:13	2024-10-09 11:19:33	145	7690	Hey, 2013. Yeah, Moe, so you can't make a left. Can you make a right? I can't even make a right because I'm right here on Georgia. I pulled over here, but when you're right with gold miners, I pulled over, so I can't make a left or a right.
826	5	2024-10-09 09:50:38	2024-10-09 09:50:44	149	7695	Good morning, this is verse 4041, calling for is your chair.
830	3	2024-10-09 09:50:55	2024-10-09 09:50:58	149	7695	Good morning, Central. This is verse 404.
833	33	2024-10-09 09:50:59	2024-10-09 09:51:32	152	7730	Attention all right on operator, the message of this hour on Wednesday, October the 9th of 2024. Follow up turns using your mirrors. Anytime you make a turn or go through a curve, you should check your mirrors. Checking your mirror will let you know the available space around your bus. Making the turn at the correct speed and checking your mirrors will eliminate accidents. At the end of time, 551.
846	10	2024-10-09 09:56:33	2024-10-09 09:56:47	149	7695	Yes, just leaving now. You all have a pleasant morning. 10-4, we copy you loud and clear at 5.56 a.m. 10-4.
1304	42	2024-10-09 11:20:27	2024-10-09 11:21:18	145	7690	2013? 2013. Yeah, so, Mo, go straight. It's a turnaround, a turnabout up there. Just go up there, turnabout, and come back down Georgia Avenue to get back on route. 10-4? Okay, it looks like it's going back up, you said. Is that going to get back on route? Yeah, so if you go up further, it's just a turnabout, a turnaround, a circle. Just go around the circle, come back down Georgia. And get back on route from Herd to Shield Drive. Be careful. Yeah, this is bypass, Gold Mill, mine road for now.
1336	1	2024-10-09 11:24:53	2024-10-09 11:24:54	144	7700	Thank you.
692	4	2024-10-09 09:10:58	2024-10-09 09:11:02	144	7700	Hi, Mr. Tullema. He pulled over. Check Gerard Street, please.
813	5	2024-10-09 09:48:43	2024-10-09 09:48:52	144	7700	Mobile 4, 10-5 of 2008. 10-4.
1335	9	2024-10-09 11:24:34	2024-10-09 11:24:53	144	7700	More four, Mr. Bright. More four. More four, go ahead. Yeah, give me a little line, please, Mr. Bright. Give me a little line.
1425	10	2024-10-09 11:33:58	2024-10-09 11:34:16	145	7690	Oh. Okay, okay, Kyle, I just, I just, I just ran around, fool. Thanks, Louie, thank you.
845	5	2024-10-09 09:56:26	2024-10-09 09:56:31	149	7695	Are you still on the horn? Good morning, 5737.
691	2	2024-10-09 09:10:43	2024-10-09 09:10:45	149	7695	There's a 10-4.
849	4	2024-10-09 09:59:43	2024-10-09 09:59:49	144	7700	Mobile Force Central, 5046, just arrived.
1301	7	2024-10-09 11:20:50	2024-10-09 11:21:00	144	7700	MOBO 3 or MOBO 4? MOBO 3 or MOBO 4? Whoever is close to the medical center.
1116	2	2024-10-09 10:52:21	2024-10-09 10:52:25	145	7690	737.
900	5	2024-10-09 10:07:41	2024-10-09 10:07:48	144	7700	You were hearing my conversation, Central? Go ahead, Mr. Bryant.
1321	7	2024-10-09 11:22:50	2024-10-09 11:22:59	144	7700	Do you have any on what? Goldmine Road to Route 53. All right, tell for it.
909	5	2024-10-09 10:08:18	2024-10-09 10:08:24	144	7700	10-4, take zone 2.2, please. Copy. 10-4
1333	7	2024-10-09 11:24:16	2024-10-09 11:24:24	144	7700	Yes. Hey, JB. Uh, give me a lay line, please.
710	3	2024-10-09 09:12:39	2024-10-09 09:12:42	144	7700	Which way did he come in?
858	32	2024-10-09 10:00:07	2024-10-09 10:00:47	144	7700	Thank you, Bernadette. You want the operator to head to Montgomery Mall and pick up the run at 5.30? Negative. Really, he's supposed to be at 7 Los Angeles at 6.07, so if he can get turned around and he can pick it up from there, the 42, back to Montgomery Mall, at least we'll save part of the trip. All right, copy that. 10-4, thank you.
1310	4	2024-10-09 11:21:55	2024-10-09 11:22:00	144	7700	May you have tape?
871	11	2024-10-09 10:03:06	2024-10-09 10:03:18	144	7700	Okay, Mobile 4 Central, you want us to hang here, wait for the shop, or can I take the replacement operator back? Can you hold on and wait? Before we flash.
907	6	2024-10-09 10:08:06	2024-10-09 10:08:14	144	7700	Good morning, sir. Happy now, sir.
1125	4	2024-10-09 10:55:10	2024-10-09 10:55:13	145	7690	four zero two five four zero two five
694	5	2024-10-09 09:11:11	2024-10-09 09:11:18	144	7700	Copy, Mr. Calama. I copy. Traffic light is holding me.
702	1	2024-10-09 09:11:46	2024-10-09 09:11:47	144	7700	I'm too essential.
704	9	2024-10-09 09:11:52	2024-10-09 09:12:04	144	7700	Can you contact bus 5356 and tell them that's not the way to come in the station? You'll know what I'm talking about.
705	2	2024-10-09 09:12:07	2024-10-09 09:12:09	144	7700	Thank you. Thank you.
1107	4	2024-10-09 10:50:25	2024-10-09 10:50:29	144	7700	Alright, 2.2. You almost did.
1108	2	2024-10-09 10:50:33	2024-10-09 10:50:34	144	7700	Turn 4.
1127	13	2024-10-09 10:55:42	2024-10-09 10:55:56	145	7690	737-737. Thanks for coming back. I was wondering, what is this digital recorder's J1708 ocumen up on the driver's transit panel?
1144	2	2024-10-09 10:58:25	2024-10-09 10:58:27	144	7700	Careful, careful, what are you?
853	1	2024-10-09 10:00:01	2024-10-09 10:00:06	144	7700	ERROR: TRANSCRIPTION_TIMEOUT
1330	2	2024-10-09 11:24:11	2024-10-09 11:24:15	144	7700	What will fit?
874	9	2024-10-09 10:03:22	2024-10-09 10:03:31	144	7700	Number four, can you hold on and wait until the shop gets there? And he said it should be about 10 minutes before they get there.
876	4	2024-10-09 10:03:32	2024-10-09 10:03:37	144	7700	All right. Copy that. We'll wait for the shot. 10-4. Thank you.
898	6	2024-10-09 10:07:30	2024-10-09 10:07:36	144	7700	Mr. Graham, check your radio, please. You're coming up. You're not an admin.
1436	3	2024-10-09 11:34:54	2024-10-09 11:34:57	144	7700	ERROR: TRANSCRIPTION_TIMEOUT
700	12	2024-10-09 09:11:27	2024-10-09 09:11:42	144	7700	Just go ahead and go to Shady Grove and I'll tell him to continue on. So we don't hold up the passengers at him. 10-4? That's the question to do.
1348	14	2024-10-09 11:26:07	2024-10-09 11:26:21	149	7695	Okay, 10-4, 10-4. Can you ask him what time is it? How long is his layover time? Can you circle back around, please?
1349	2	2024-10-09 11:26:23	2024-10-09 11:26:27	149	7695	Au revoir.
1356	12	2024-10-09 11:26:28	2024-10-09 11:26:39	149	7695	Hold on one second. 4091, just circle back around and pull out just a minute before your time, please, so we can work together.
703	9	2024-10-09 09:11:49	2024-10-09 09:12:02	149	7695	Hey Reed, go ahead to Shady Grove and I'll have him catch you up in Shady Grove. Yeah, thank you. 10-4.
903	9	2024-10-09 10:07:51	2024-10-09 10:08:03	144	7700	I'm negative. I thought you were talking to me. I'm negative, negative. I'm trying to come in to catch with Miss Graham, Dominique. Good morning.
1206	2	2024-10-09 11:07:22	2024-10-09 11:07:25	145	7690	We'll do it.
1426	2	2024-10-09 11:34:18	2024-10-09 11:34:20	144	7700	Oh, boy, we want to make this regard, eh?
1438	8	2024-10-09 11:35:48	2024-10-09 11:35:57	149	7695	Thanks for getting back. Hey, I believe, I know they have bathrooms at Briggs Chaney now. Do you happen to know what the code is?
1443	7	2024-10-09 11:36:01	2024-10-09 11:36:10	149	7695	Hi, um, 10-3. 15987, sir.
1441	37	2024-10-09 11:35:23	2024-10-09 11:36:06	145	7690	Yeah, go ahead, 95. There is a dead deer carcass at the intersection of southbound Frederick Road at Rosecrest. Southbound Frederick Road at Rosecrest, and it's starting to decompose. It's right at the bus stop. All right, thanks for the information. We already called to get that cleaned up. If it was fresh, I'd take care of it for you to take it home and cook it, but it's been out there a couple days.
1481	1	2024-10-09 11:39:34	2024-10-09 11:39:35	144	7700	Thanks, Jeff.
1476	5	2024-10-09 11:39:14	2024-10-09 11:39:20	144	7700	Yeah, Moist. Moist is essential.
1502	2	2024-10-09 11:41:43	2024-10-09 11:41:45	144	7700	What's going on, Hildi?
1865	2	2024-10-09 12:19:19	2024-10-09 12:19:21	145	7690	20, 33.
1444	3	2024-10-09 11:36:11	2024-10-09 11:36:14	149	7695	Bear with me a second, bear with me a second please.
1499	3	2024-10-09 11:41:09	2024-10-09 11:41:12	144	7700	My work is 2.2mg
1445	4	2024-10-09 11:36:11	2024-10-09 11:36:16	145	7690	Okay, copy. Yeah, we made the call already.
1448	1	2024-10-09 11:36:17	2024-10-09 11:36:20	145	7690	Okay.
1449	7	2024-10-09 11:36:21	2024-10-09 11:36:28	149	7695	What did you say that it was again, please? 15987.
1450	11	2024-10-09 11:36:36	2024-10-09 11:36:49	149	7695	Pardon me on that. Can you please repeat? I apologize. 15987. Thank you so much. Thank you so much.
1462	4	2024-10-09 11:37:35	2024-10-09 11:37:39	144	7700	4th central, 4 to 15 is good to go.
1465	3	2024-10-09 11:37:45	2024-10-09 11:37:47	144	7700	Oh, well, well, well.
1467	7	2024-10-09 11:37:51	2024-10-09 11:38:01	144	7700	Just letting you guys know, 4015 is good. 10-4, thank you.
1490	28	2024-10-09 11:39:39	2024-10-09 11:40:11	144	7700	Yes, sir. Bad news on 5057. That bus is not in the state of Maryland. It's all the way in Pennsylvania. So it's about three weeks. We'll be back in three weeks. All right, copy. 10-4, thank you. I was going by the yard man told me that. That's what the shop told you? I just went for the crew chief, yes, sir. So they drove yesterday to Pennsylvania for transmission work. I don't know. Okay, copy. 10-4.
1500	13	2024-10-09 11:41:15	2024-10-09 11:41:31	144	7700	Over 2.2. Yeah, by any chance. So you're still on Brick Cheney or close to New Hampshire? I mean, to Hillandale? Brick's real. 10-4, 10-4.
1763	3	2024-10-09 12:06:57	2024-10-09 12:07:00	144	7700	10, 5, 5, 3, 4, 9.
1497	12	2024-10-09 11:40:41	2024-10-09 11:41:00	144	7700	Uh, Mobile 2. Mobile 2. Mobile 2. Yeah, but any chance are you still in the area? For negative, I'm in Tacoma waiting on the bus. Copy, copy that.
1870	4	2024-10-09 12:20:07	2024-10-09 12:20:11	145	7690	three zero zero three three zero zero three
1549	3	2024-10-09 11:45:58	2024-10-09 11:46:01	145	7690	five zero five five five zero five five
1853	5	2024-10-09 12:18:10	2024-10-09 12:18:18	145	7690	Good morning central, fifty seven forty seven, raise your check
1867	14	2024-10-09 12:19:26	2024-10-09 12:19:42	145	7690	Morning Central, 2033 Radio Check. Loud and clear, 2033 Temple. Temple, thank you so much. Have a nice day. Have a nice day.
1871	4	2024-10-09 12:20:15	2024-10-09 12:20:25	145	7690	Three zero zero three. Zero zero three.
1558	3	2024-10-09 11:46:31	2024-10-09 11:46:33	149	7695	4144-4144.
1559	25	2024-10-09 11:46:06	2024-10-09 11:46:34	145	7690	Good morning again, 5055. Yeah, how's it working out for you right now? Right now, the light is not on, but I'm going to keep driving it as you foretold me to do, and we'll see what comes out of it. Oh, that's a good thing, 10-4. If you have any issues, just give us a call back, 10-4.
1562	3	2024-10-09 11:46:39	2024-10-09 11:46:42	149	7695	4144 4144
1561	5	2024-10-09 11:46:36	2024-10-09 11:46:42	145	7690	We're going to do what you tell me to do. All right, copy, no problem.
1664	25	2024-10-09 11:57:17	2024-10-09 11:57:45	144	7700	Yeah, Mobile 2. When you come back to Keelan, then you can check that area, please. New Hampshire and Charlottesville seem like it's a block. Southbound only. So you are going northbound. You can see how long is going to be the detour in that area. When you come back to that area, please. I don't know what should be about him, but I guess he runs a little late. Copy, sir. Copy that.
1671	6	2024-10-09 11:58:00	2024-10-09 11:58:08	144	7700	Yeah, he running late. He getting ready to make the right turn on Ethan Allen. Okay, copy.
1775	12	2024-10-09 12:08:49	2024-10-09 12:09:06	145	7690	2-0-1-3. 2-0-1-3. 4-0-1-3. Yeah. I think that situation is all clear. Regular routing, 10-4. 10-4. Appreciate it.
1566	4	2024-10-09 11:47:00	2024-10-09 11:47:04	149	7695	forty one forty four forty one forty four
16407	2	2024-10-10 17:56:58	2024-10-10 17:57:00	144	7700	All right.
1857	28	2024-10-09 12:18:02	2024-10-09 12:18:33	144	7700	Yeah, 7, go. Can you get on 370 like you head into Germantown, but you head into direction like a 74? We got 2029. It's broken down right there under the bridge before it goes on to 270 south.
1863	13	2024-10-09 12:18:48	2024-10-09 12:19:05	144	7700	Oh, um, 29 is broken down at 370, going south. That's what you mean. Salma, give me a lane line, please. Thank you.
1881	38	2024-10-09 12:20:25	2024-10-09 12:21:06	145	7690	Yeah, 003. What run are you trying to log on to? This is Supervisor Lewis. I'm actually being retrained on one of the buses, so to get a little more acclimated with some of these electric buses. And I called myself trying to put a run in that might have been a mock run. Yeah, but it wasn't working for me. Do you particularly have a mock run that I could use? No, unfortunately, Mr. Lewis, they don't have that in the new system. So, yeah, that's why I noticed you trying to put in a run. I was calling. I thought you was an operator. Yeah, there's no mock run.
1859	8	2024-10-09 12:18:36	2024-10-09 12:18:45	144	7700	I don't understand. 317. What's 317 about? 370. 370.
1864	2	2024-10-09 12:19:13	2024-10-09 12:19:15	145	7690	2033.
1882	6	2024-10-09 12:21:08	2024-10-09 12:21:15	145	7690	Okay, 10-4. Thank you very much. I appreciate you. No problem, no problem. 10-4.
2923	6	2024-10-09 14:00:49	2024-10-09 14:00:57	149	7695	025, 2025. 2025, please call me there.
1849	2	2024-10-09 12:17:55	2024-10-09 12:17:59	144	7700	Uh, seven?
1858	5	2024-10-09 12:18:27	2024-10-09 12:18:33	145	7690	Are you loud and clear on the radio check, 10-4? 10-4.
1862	3	2024-10-09 12:19:02	2024-10-09 12:19:05	145	7690	Two zero three three. Two zero three three.
5315	5	2024-10-09 17:39:44	2024-10-09 17:39:53	144	7700	Go ahead, three.
1974	45	2024-10-09 12:32:01	2024-10-09 12:32:54	144	7700	Mobile 4. Mobile 4. Mobile 4. Mobile 4. On Rockville Pike, 4058 is sending me a priority to request, but he's not saying anything. He's busting stuff. So Rockville Pike, he's doing a 101 on up Rockville Pike. So it looks like he's towards Lake Forest. As soon as you cross over Twinbrook and Rollins Avenue. He's headed to Medical Center, correct? Negative. He headed to Lake Forest, going north.
2081	8	2024-10-09 12:42:28	2024-10-09 12:42:36	144	7700	See, uh, mobile 4th Central. See, uh, looks like the ambulance is 10-5.
2084	13	2024-10-09 12:42:38	2024-10-09 12:42:59	144	7700	Copy, sir. Copy that. Supervisor route also. Copy. 10-4. And I'm going to need some help with the hard drive. I don't have any stairs. 10-4. 10-4.
2087	13	2024-10-09 12:43:20	2024-10-09 12:43:32	144	7700	Copy, copy. Good man, JP. Thank you. We are making sure the bus is 4058. It's on the other side. We're going northbound.
2004	2	2024-10-09 12:35:45	2024-10-09 12:35:46	144	7700	Oh, do you think that?
2209	19	2024-10-09 12:53:10	2024-10-09 12:53:36	144	7700	Supervisor Santos. Supervisor Santos? Hi. Mr. Santos, by chance, did you take an operator? And if so, can you go back for an operator, please? No, I didn't take it. Do you have me go back? I'm by Goody Drive right now. 10-4, please. 10-4.
2059	41	2024-10-09 12:39:04	2024-10-09 12:39:51	147	7710	What? Hey, Antoine, when you get a chance, I need you to cut that bus off, shut the battery off, and reboot it all the way back up. 10-4. What happened? Your bus is in fullback. You're not getting the information you need for the detour. That's all. I need the communications back on that bus. Alright, 10-4. I can finish this route. Yeah, go ahead. Finish the route. Then when you get to the station, just cut it off, shut it, and reboot it, and then it'll log you back in. That is a bus.
1949	1	2024-10-09 12:31:23	2024-10-09 12:31:24	145	7690	Four zero five.
2124	14	2024-10-09 12:46:29	2024-10-09 12:46:45	144	7700	I'm 10-5 with 20-29. Let me see what's going on, if we can take it back to the depot or not. I will let you know. 10-4, thank you.
1947	2	2024-10-09 12:31:13	2024-10-09 12:31:15	145	7690	40, 58.
1976	1	2024-10-09 12:32:57	2024-10-09 12:33:00	144	7700	Happy.
2099	2	2024-10-09 12:44:24	2024-10-09 12:44:25	144	7700	Home level 4.
1954	3	2024-10-09 12:31:42	2024-10-09 12:31:44	145	7690	4058.
2102	7	2024-10-09 12:44:33	2024-10-09 12:44:43	144	7700	Mobile 4. Mobile 4. Supervisor will be enrolled shortly. I'm back.
1992	4	2024-10-09 12:34:30	2024-10-09 12:34:38	144	7700	Number four, number four. Number four.
1996	22	2024-10-09 12:34:42	2024-10-09 12:35:06	144	7700	We need your help on bus 4058. We are calling an ambulance for a passenger inside the bus. The location is 355 and Twinbrook Parkway. 355 at Twinbrook Parkway. Just passing Twinbrook. Copy that. Thank you.
2085	8	2024-10-09 12:43:09	2024-10-09 12:43:17	144	7700	Mobile 6. Yeah, 6. How am I going to go in? I'll go pull the hard drive for you from the 4050 here.
2110	8	2024-10-09 12:45:03	2024-10-09 12:45:12	144	7700	All right, copy that. They're going to transport her. They say they're a little greater, either Shady Grove or Suburban. 10-4, 10-4, thank you.
1956	2	2024-10-09 12:31:51	2024-10-09 12:31:52	145	7690	And...
2089	3	2024-10-09 12:43:36	2024-10-09 12:43:39	144	7700	Alright, 10-4. 10-4.
2321	14	2024-10-09 13:04:33	2024-10-09 13:04:50	149	7695	4061. 4061. Go ahead. Good morning. Good morning, 4061. Disregard that trip, please. Disregard that trip. 10-4. Copy that. Thank you. 10-4. Thank you.
1951	3	2024-10-09 12:31:30	2024-10-09 12:31:33	145	7690	4058, 4058.
2006	15	2024-10-09 12:35:50	2024-10-09 12:36:05	144	7700	We had an accident up in Chalmers in New Hampshire. It might be a while. It looked like it might have been a fatality. They are letting one lane through. But of course, you know, the traffic is backed up all the way to 29.
2007	2	2024-10-09 12:36:08	2024-10-09 12:36:10	144	7700	Copy that, 10-4.
2012	3	2024-10-09 12:36:29	2024-10-09 12:36:32	144	7700	Still walk up here. I ain't going to never be able to get back.
2016	5	2024-10-09 12:36:38	2024-10-09 12:36:43	144	7700	Mr. Dalespin, would you get a chance? Give us a landline, please. Give us a landline.
2021	4	2024-10-09 12:36:55	2024-10-09 12:37:01	147	7710	5-3-5-0
2039	3	2024-10-09 12:37:58	2024-10-09 12:38:05	144	7700	Mobile floor, 10-5-40-58.
2121	3	2024-10-09 12:46:24	2024-10-09 12:46:27	144	7700	Mobile is 7% drop.
2265	9	2024-10-09 12:59:36	2024-10-09 12:59:45	144	7700	Coordinator Bryce, if you start that location, can you have that operator then head to Lake Forest and just pull out the 915 trip?
2306	4	2024-10-09 13:03:27	2024-10-09 13:03:33	149	7695	4061, 4061.
2331	3	2024-10-09 13:06:23	2024-10-09 13:06:26	144	7700	About seven percent last.
2023	2	2024-10-09 12:37:13	2024-10-09 12:37:15	147	7710	9-3-5-0 at the center.
2037	11	2024-10-09 12:37:29	2024-10-09 12:37:41	147	7710	Yes, Antoine. It's going to be on there for a while. Use Silver Spring Avenue. Bypass sale, okay? Yeah, man. Appreciate it.
2332	5	2024-10-09 13:06:45	2024-10-09 13:06:50	144	7700	Motherfucker, we've made it to this depot. 10-4.
2353	13	2024-10-09 13:11:43	2024-10-09 13:11:56	144	7700	I have with me from 321. Where do you want to pick it up from?
2197	4	2024-10-09 12:52:00	2024-10-09 12:52:07	144	7700	Yes, we're going to try. Copy that.
2298	4	2024-10-09 13:03:15	2024-10-09 13:03:19	149	7695	4061 4061.
2254	9	2024-10-09 12:58:38	2024-10-09 12:58:48	144	7700	I mean, coordinator Jack DePaul is there. He has the hard drive. The offer is going to continue on.
2257	3	2024-10-09 12:58:54	2024-10-09 12:58:58	144	7700	Ten four, ten four.
2313	3	2024-10-09 13:04:15	2024-10-09 13:04:18	149	7695	4061 4061
2030	5	2024-10-09 12:37:20	2024-10-09 12:37:27	147	7710	Yeah, go ahead, Antoine. Still a detour on the 28 route?
2205	3	2024-10-09 12:53:01	2024-10-09 12:53:04	144	7700	Supervisor Franco.
2049	5	2024-10-09 12:38:55	2024-10-09 12:39:00	147	7710	5053. 5350. 5350.
2249	20	2024-10-09 12:57:59	2024-10-09 12:58:27	144	7700	Mobile 4 Central? Yes, Mobile 4. You're going to give me an update. I'll make some exercises in the ambulance and the lady is not going to be transported. Central, thank you. Supervisor Santos, I hope you're listening. Yeah, I did.
2158	7	2024-10-09 12:48:32	2024-10-09 12:48:40	144	7700	We can take you to the depot. I'll follow him and we'll take you down, 10-4. 10-4, thank you.
2232	22	2024-10-09 12:56:16	2024-10-09 12:56:47	144	7700	Supervisor Santos? All right. Please continue on. Please continue on. I apologize. We have another situation for the operator. We'll try and get another operator to pick that bus up. 10-4? 10-4. Thank you.
2266	3	2024-10-09 12:59:49	2024-10-09 12:59:52	144	7700	Copy that. He heard you. Thank you.
2316	3	2024-10-09 13:04:24	2024-10-09 13:04:27	149	7695	4061, 4061.
2277	7	2024-10-09 13:01:01	2024-10-09 13:01:09	149	7695	4071, will you send to do a trip off from Lake Forest?
2284	17	2024-10-09 13:01:12	2024-10-09 13:01:35	149	7695	I'm sorry? Good morning, Trina. Disregard. 10-4, 10-4. Good morning. Good morning. You're doing the line, correct? That's correct. 10-4, 10-4. Thank you. You're welcome.
2357	6	2024-10-09 13:12:10	2024-10-09 13:12:18	144	7700	Mobile 7, road needs focus. I'm sorry, yes, I'm Mobile 7.
3348	32	2024-10-09 14:41:17	2024-10-09 14:41:50	145	7690	4146. Yeah, good morning, Sam Trout. And this is for you on 416. Can you find me someone to cover a trip I was supposed to pull out at 1110, Route 5 from Silver Spring? There are a couple of tracks blocking Wayne Avenue. And we've been sitting like almost, for me, it's like almost 20 minutes. And both direct...
2365	18	2024-10-09 13:12:22	2024-10-09 13:12:43	144	7700	I'm mobile 7, right? Correct. All right. I got 40, 80, 5 for him. So where do you want him to pick the next round?
2368	15	2024-10-09 13:12:51	2024-10-09 13:13:09	144	7700	We have round 3, 43. Can you pull it out late, please? Let him pull it out late, please. 43, Shady Grove. 10-4. 10-4. Thank you. All right. Thank you.
2410	46	2024-10-09 13:15:43	2024-10-09 13:16:28	152	7730	What's up in the morning, everybody? Today is Wednesday, October 9, 2024. Today's safety message is follow-up turns using mirrors. Anytime you make a turn or go through a curve, you should check your mirrors. Checking your mirrors will let you know the available space around your bus. Making the turn at the correct speed and checking your mirrors will eliminate accidents. Why? Know your surroundings. Follow-up turns using mirrors. That's the safety message for Wednesday, October 9, 2024. Central time is 9.16.
2725	3	2024-10-09 13:39:58	2024-10-09 13:40:01	151	7720	ERROR: TRANSCRIPTION_TIMEOUT
3350	12	2024-10-09 14:41:57	2024-10-09 14:42:09	145	7690	Uh, Schaefer, yeah, copy that. Just, uh, just gotta wait it out. When you get on the other end, just call us back, and I'll help you pick your trip up. 10-4, if you're late.
2418	6	2024-10-09 13:17:10	2024-10-09 13:17:16	144	7700	I'll take 10-7 by for a meal break.
10885	2	2024-10-10 04:57:25	2024-10-10 04:57:27	144	7700	That's affirmative. One o'clock. Three more minutes.
2757	3	2024-10-09 13:43:13	2024-10-09 13:43:15	147	7710	Ciao then.
2566	3	2024-10-09 13:28:28	2024-10-09 13:28:32	144	7700	ERROR: TRANSCRIPTION_TIMEOUT
3351	1	2024-10-09 14:42:12	2024-10-09 14:42:18	145	7690	Thank you.
2495	4	2024-10-09 13:23:26	2024-10-09 13:23:32	145	7690	Six zero one four six zero one four.
2502	16	2024-10-09 13:23:32	2024-10-09 13:23:52	145	7690	Yeah, 501-4 Central. As you know, I'm very late finishing my run, so I'll be pulling out a work voucher. No problem, 10-4. 10-4, thank you.
5317	3	2024-10-09 17:40:01	2024-10-09 17:40:03	144	7700	Three, do your copy central.
3067	7	2024-10-09 14:14:11	2024-10-09 14:14:18	144	7700	Mr. Graham, you came back from the midway.
3053	22	2024-10-09 14:12:40	2024-10-09 14:13:04	145	7690	5053. 5053. Hey, Adam, when you get a chance, call the depot, Ms. Maxine, and let her know what time your training is tomorrow. 10-4? Call the depot and let who know?
3049	15	2024-10-09 14:12:16	2024-10-09 14:12:35	149	7695	Yeah, Sasha, I believe my power's turning going out. Copy. Well, I know it's going out. Copy. I copy. Was there any indication?
3055	30	2024-10-09 14:12:34	2024-10-09 14:13:05	149	7695	You know, the check engine light came on and saying that was the only indication. It's saying hydraulic fluid load. But other than that, now I can smell it. And I see some stuff. I don't know if it's from me or from something. But it's just sluggish. You know, like it was going real hard. Then I stopped the bus, played with the wheel, loosened it up. But now it's hard to turn again.
3058	17	2024-10-09 14:13:05	2024-10-09 14:13:26	145	7690	What time you're training tomorrow? Ten to two. Ten in the morning to two in the afternoon. Okay, copy. Ten to two. Ten four. Carry on. Ten four. Thank you.
3060	18	2024-10-09 14:13:35	2024-10-09 14:13:53	144	7700	Yeah, go ahead, thank you. Mobile says, can you run down to Travella Gateway Drive? Look for bus 4129. He's talking about his forward steering going out. I'm going to search for another bus frame and call the shop.
3063	7	2024-10-09 14:13:56	2024-10-09 14:14:04	144	7700	And that's 10 for the Tribute Gateway Center. 10-4. Dr. Cockham.
3070	2	2024-10-09 14:14:30	2024-10-09 14:14:31	144	7700	Mr. Brown.
3068	2	2024-10-09 14:14:19	2024-10-09 14:14:21	149	7695	We'll be right back.
3071	2	2024-10-09 14:14:29	2024-10-09 14:14:31	149	7695	Put in here, you will be there.
3074	13	2024-10-09 14:14:35	2024-10-09 14:14:52	149	7695	4129, mobile unit is enrolled to you to assess the situation. Copy, I just got out of the bus here. It's me. I can see it running out of there. Alright. 10-4.
3469	2	2024-10-09 14:52:18	2024-10-09 14:52:20	145	7690	4159.
3479	27	2024-10-09 14:52:23	2024-10-09 14:52:55	145	7690	Good morning, 4159 to Central. Yes, sir. Go ahead. Go ahead. 4159 may need a bus switch at Silver Spring. I'm at Tacoma Station. I got a low battery. You got a low battery? All right, when you get back to Silver Spring, call me. I'm going to have a coordinator to meet you and check it out, 10-4. I'll see you at 10-4.
3218	9	2024-10-09 14:29:46	2024-10-09 14:29:56	144	7700	Yeah, also, you say you got a bus switch coming for, uh, someone coming for a bus switch? 10-4. I haven't gotten a bus yet. 10-4.
3221	2	2024-10-09 14:29:59	2024-10-09 14:30:00	144	7700	I got the copy.
3466	2	2024-10-09 14:52:11	2024-10-09 14:52:13	145	7690	4159.
3124	21	2024-10-09 14:20:19	2024-10-09 14:20:49	144	7700	Mobile Lake, I'll call the shop to inform the shop. So if you have any further information, can you call the shop, please? Yes, ma'am. Should be there any minute. Thank you. This is 2. I'm in route with this hard drive. Thank you. I'm in route, central with this hard drive. Thank you.
3214	7	2024-10-09 14:29:34	2024-10-09 14:29:42	144	7700	Yes, I just spoke with the shop this way on the way. 10-4, 10-4.
3232	10	2024-10-09 14:31:18	2024-10-09 14:31:32	144	7700	Mobile Quicks, can you take him back to the depot together, bud, please? After the shop reach? 10-4. 10-4, thank you.
3167	3	2024-10-09 14:24:37	2024-10-09 14:24:40	144	7700	You're six, I'm ten, five.
3236	18	2024-10-09 14:31:45	2024-10-09 14:32:08	149	7695	Good morning again. 4144, radio check. 4144, we can feel louder and clear at 1031 AM. Thank you very much. And thank you for your help earlier over with the flash, Bernadette. I appreciate it. 10-4. Have a good afternoon.
3535	62	2024-10-09 14:57:46	2024-10-09 14:59:00	145	7690	Is this still a recorded line? Yes. Tracy, can you do the bus switch? Just give me a simple yes or no. All right. He's going to be in 16 Bay when you get back to Silver Spring. You copy that? I know. If I don't need you, I'll call you back and let you know, okay? All right. 10-4. So what you want me to do with this 15 is your thing gone. Let me look at your run real quick, Tracy. All right. 10-4. You should have been pulled out to 15 at 10-40. What's your location now? I'm almost to Silver Spring Park.
3559	15	2024-10-09 14:59:51	2024-10-09 15:00:07	145	7690	New Hampshire is probably even worse, but okay, I'll do that. That's what you're telling me to do. Well, New Hampshire, I meant University. University Boulevard, jump back on University, take Colt, and get on Coltsville Road.
3678	5	2024-10-09 15:08:53	2024-10-09 15:08:57	149	7695	I made the right turn to Kevin Movers. What you want me to do?
3519	22	2024-10-09 14:57:16	2024-10-09 14:57:43	145	7690	5-7-7-0, 5-7-7-0. Yeah, this is 5-7-7-0. Hey, Tracy, you clear in Silver Spring at 11-59? That's 10-4. Can you do a bus switch for me in Silver Spring with 4159?
3544	24	2024-10-09 14:59:09	2024-10-09 14:59:39	149	7695	Yes, same sir. Kevin, I just made it to Steve Spring. Pretty much lost my meal break. I've got 10 minutes. I've got to use the bathroom. I'm going to fill out the voucher later on. Leave the disk now. Will you? 10-4? 10-4, sir. 10-4. That's for my calling, Kevin. 10-4. 10-4, sir. I'll let Kevin know.
3318	20	2024-10-09 14:39:37	2024-10-09 14:40:00	149	7695	5-3-3-1, 5-3-3-1. Plus 5-3-3-1, good morning. Checking in, doing route. Run 109, checking in day ahead in the Silver Spring in a minute. Good morning, 3-3-1. We call for you loud and clear at 10.39 a.m. You have a safe day. You too. Thank you.
3687	4	2024-10-09 15:09:36	2024-10-09 15:09:41	149	7695	Can you go around on the right line and come back the back way and pull it out, please?
3340	29	2024-10-09 14:40:26	2024-10-09 14:40:59	149	7695	Yeah, this is 5770. Just letting you know, run number one, doing the 15 to Langley Park. I'm still right here on Wayne Avenue. They're loading a tractor trailer right now. 10-4, Tracy. Just, we're going to have to wait it out. 10-4, wait it out. Hey, Brady, baby. You know, that's not a problem for me. I'm going to be sitting right here until they finish. 10-4, 10-4.
3642	4	2024-10-09 15:05:31	2024-10-09 15:05:34	144	7700	Yeah, mobile stick.
3645	7	2024-10-09 15:05:41	2024-10-09 15:05:55	144	7700	Motor 6. Yeah, Mr. Horse has 4134. He's just leaving the yard just now. 10-4.
3565	19	2024-10-09 15:00:11	2024-10-09 15:00:32	145	7690	10-12, if you say so. Yeah, yeah, so take University, dab back down to Colesville, make that left on Colesville, shoot straight to Silver Spring. You might be a couple of minutes late, but I'm quite sure you can catch it up from there, 10-4. 10-12.
3547	41	2024-10-09 14:59:02	2024-10-09 14:59:48	145	7690	Oh, to Langley Park. Oh, you're supposed to pull out at 10.33. If you can, just dig here back to Silver Spring and pull out that 11.15 one, 10.4. All right, 10.4. You think I'm going to make it in time? Yeah, you should. Step to Colesville and jump back down to Silver Spring real quick and now go back the way you came.
3668	10	2024-10-09 15:07:51	2024-10-09 15:08:02	144	7700	Mobile text, go with your message please. You can't please post number, you got 4134, a replacement of 4129. Turn 4, turn 4.
3672	1	2024-10-09 15:08:38	2024-10-09 15:08:39	149	7695	What is that?
3675	6	2024-10-09 15:08:42	2024-10-09 15:08:49	149	7695	You needed to pull out that 1105 or that Shady Grove. It's just a couple minutes late.
3665	5	2024-10-09 15:07:40	2024-10-09 15:07:45	144	7700	Yes, enter your copy. He has 4134.
3681	10	2024-10-09 15:08:59	2024-10-09 15:09:12	149	7695	Can you come around, go back around and, um, go around and make sure I come back through the back way?
4289	1	2024-10-09 16:08:22	2024-10-09 16:08:23	144	7700	Stand by for it.
3868	46	2024-10-09 15:23:45	2024-10-09 15:24:32	152	7730	Good afternoon. Well, good afternoon. Going into the noon, but happy Wednesday to everybody. Today is October the 9th, 2024. Today's safety message is follow-up turns using your mirrors. Anytime you make a turn or go to a curb, you should check your mirrors. Checking your mirrors will let you know the available space around your bus. Eliminate accidents. Why? Know your surroundings. Follow-up turns using your mirrors. That's today's safety message for October the 9th, 2024. Central time is 1124.
4286	2	2024-10-09 16:07:39	2024-10-09 16:07:41	144	7700	Tereza Central?
10887	2	2024-10-10 04:57:41	2024-10-10 04:57:45	144	7700	All right, I'll bring it down at 1 o'clock then.
4297	5	2024-10-09 16:09:05	2024-10-09 16:09:10	144	7700	I don't know. That'll be 10-8-11-28-06-7-0-4.
4236	5	2024-10-09 16:02:34	2024-10-09 16:02:39	144	7700	ERROR: TRANSCRIPTION_TIMEOUT
4306	2	2024-10-09 16:09:37	2024-10-09 16:09:40	144	7700	Thank you for your support.
4263	1	2024-10-09 16:05:53	2024-10-09 16:05:54	144	7700	For us essential.
4303	2	2024-10-09 16:09:33	2024-10-09 16:09:35	144	7700	Oh, don't fool. Copy.
4294	2	2024-10-09 16:08:57	2024-10-09 16:08:59	144	7700	Hello. See ya. What's up, man?
5324	3	2024-10-09 17:40:26	2024-10-09 17:40:29	144	7700	Mobile 3, you're not coming through.
4096	14	2024-10-09 15:47:51	2024-10-09 15:48:07	145	7690	It's been the hour 109. All right, hang tight. I got 5770. He's going to do the switch with you. All right, 10-4. You don't pull off the 1205.
4122	6	2024-10-09 15:51:21	2024-10-09 15:51:30	144	7700	More one. Time for the remainder. Have a good one. Have a good day. Thank you.
14202	2	2024-10-10 14:42:41	2024-10-10 14:42:43	144	7700	Molly.
4100	19	2024-10-09 15:48:12	2024-10-09 15:48:35	145	7690	You tell me that? Come back again. 5-7-7-what? 5-7-7-0. He's going to switch with you. You're going to pull out until, uh, 12-05. Be sure to write that up so he can shop that bus. 10-4? Yeah, 10-4.
4119	16	2024-10-09 15:50:15	2024-10-09 15:50:38	145	7690	Five, seven, seven, zero. Fifty-seven, seventy. I got the message. Forty-one, fifty-nine, sixteen, bae. Yeah. Yes, yes. Ten-four, lower level, Tracy. Thank you. All right. Ten-four, thanks.
4094	13	2024-10-09 15:47:31	2024-10-09 15:47:47	145	7690	4159. 159, call about a barry, low barry charge. I'm at Sierra Spring Bay 109. Yeah, you in the 16, bae?
4121	2	2024-10-09 15:51:15	2024-10-09 15:51:16	144	7700	Mobile and essential.
4081	3	2024-10-09 15:46:31	2024-10-09 15:46:35	144	7700	ERROR: TRANSCRIPTION_TIMEOUT
4166	51	2024-10-09 15:54:16	2024-10-09 15:55:13	145	7690	4028? 4028. Yeah, go ahead. Go ahead, 4028. Talk to me. Yeah, so, um, I just finished a 64 to Montgomery Village, and, um, it looks like, like, someone spilled some, like, red nitro. So I'm just, like, trying to knock them, you know, make it look like a crime scene. So it might be, you know, sometime, well, I guess, like, napkins at McDonald's and some stuff, and I guess clean it up, because it looks pretty bad. Okay, can I be careful? If you have some water or something, you can see how long this takes. I guess I'll contact you again and see, you know, if anything changes. All right, 10-4, if you have some water or something, you can pour a little water on it. Maybe run out the back door or something. 10-4? Yeah, 10-4. Yeah, just gonna take my time to clean up.
4498	1	2024-10-09 16:30:54	2024-10-09 16:30:59	144	7700	Two or four, Mr. Bray.
5619	2	2024-10-09 18:09:04	2024-10-09 18:09:05	145	7690	2028 out.
4183	1	2024-10-09 15:57:31	2024-10-09 15:57:32	144	7700	Careful.
4496	6	2024-10-09 16:30:46	2024-10-09 16:30:52	144	7700	Well, 4 Central, it's going to be 10-7 for the remainder. Everybody have a good afternoon.
4169	1	2024-10-09 15:55:43	2024-10-09 15:55:44	144	7700	Well, the central.
4437	3	2024-10-09 16:25:29	2024-10-09 16:25:34	144	7700	You asking me, can you leave now?
4181	5	2024-10-09 15:57:22	2024-10-09 15:57:28	144	7700	Copy, sir. Take Zone 5, please. Zone 5.
4434	7	2024-10-09 16:25:07	2024-10-09 16:25:18	144	7700	I thought you was just mobile 7. I didn't know you was 7 and 8, tell them all.
4174	1	2024-10-09 15:56:53	2024-10-09 15:56:54	144	7700	Me too, Wells.
4436	2	2024-10-09 16:25:24	2024-10-09 16:25:27	144	7700	Can I do now?
4441	8	2024-10-09 16:25:35	2024-10-09 16:25:51	144	7700	Yes. I'm so careful for doing it right now. I can't be careful. You can leave. Careful.
5634	2	2024-10-09 18:10:07	2024-10-09 18:10:09	144	7700	And we'll find potential.
4178	5	2024-10-09 15:57:06	2024-10-09 15:57:13	144	7700	Mr. Wells Yes, I'm turning on 2651
4761	3	2024-10-09 16:57:51	2024-10-09 16:57:54	145	7690	40-20, 40-20.
4777	38	2024-10-09 16:58:32	2024-10-09 16:59:19	145	7690	You on your way into Twinbrook Metro Station? You're on your way inside of Twinbrook or were you leaving Twinbrook? Which one was it? Is it? I actually approached Twinbrook Station 10-4. You had the 26 bay, correct? Exactly. You're in the discharge right here at the train station. Alright, do me a favor. Stand by because this is your last trip. I'm going to send a coordinator to your bus, okay?
4767	21	2024-10-09 16:57:56	2024-10-09 16:58:18	145	7690	40-20, block 10-25, run 25. I'm having a problem with this bus. The airbags are putting the musky down. It's all the way down to 150 and keep keeping a whole lot of noise like Eric escaping.
10888	5	2024-10-10 04:57:45	2024-10-10 04:57:52	144	7700	I appreciate the affirmative. All right. Have a good night.
4815	2	2024-10-09 17:01:40	2024-10-09 17:01:42	144	7700	All right, let me see what I can do.
4796	6	2024-10-09 17:00:33	2024-10-09 17:00:40	145	7690	Tell me that when you told me you wanted to. Okay, whatever. You said you wanted to continue.
4858	16	2024-10-09 17:05:07	2024-10-09 17:05:26	149	7695	40, 9 to 1, radio check. Good afternoon. Good afternoon, 4091. We copy you loud and clear. It is 1.05 p.m. You have a safe afternoon. And you do the same. Thank you very much.
4769	9	2024-10-09 16:58:21	2024-10-09 16:58:29	145	7690	Okay, and I got you located on Twinbrook Parkway, going into Twinbrook Station.
4820	9	2024-10-09 17:01:45	2024-10-09 17:01:54	144	7700	She's sitting there. Oh no, she leaving now. She getting ready to make that left turn on her twin bro. This is her last trip anyway.
4786	41	2024-10-09 16:59:21	2024-10-09 17:00:05	145	7690	We're driving to the wheels off, to be honest. As long it don't stop, I continue left. Negative. Negative. You said the air pressure is dropping. So why would you want to continue driving the bus? I told you I wanted to continue to drive the bus. The air pressure is at 150. It doesn't go up and it doesn't go down. It just drops to 150 and it's set. At 150. Alright, well let me have it. Alright, so can I still have somebody look at it before you pull off?
4792	8	2024-10-09 17:00:21	2024-10-09 17:00:29	145	7690	Okay, copy that. I'll copy that. Let's continue on and let me know if you need assistance, Penfold.
4812	30	2024-10-09 17:01:02	2024-10-09 17:01:36	144	7700	Mobile 4, Mobile 4. Mobile 4, company at 4020 at Thunberg Station. Yeah, you might get captured before she leaves, Perez. I don't know what she wants. She said 150, it go to 150, and then it drop to 150. I don't even understand what that means. 10-4 should be in five minutes. Can you have her wait for me? Or at least pull over? Hey, you heard it, Perez. Did you just hear her fuck at me?
5571	21	2024-10-09 18:04:27	2024-10-09 18:04:57	145	7690	I hear you. 750, I got a call from your bus. Was it me that might have been the driver before? I just got a bell from your bus right now, so I don't know. Everything okay? Actually, I let the people get ready to pull out, so I don't think it was me unless I did it by accident. Yeah, 10-4.
5624	1	2024-10-09 18:09:14	2024-10-09 18:09:17	145	7690	ERROR: TRANSCRIPTION_TIMEOUT
4826	7	2024-10-09 17:02:10	2024-10-09 17:02:18	145	7690	2027. 2027, do no radio check. Loud and clear, 10-4.
5617	11	2024-10-09 18:08:41	2024-10-09 18:08:56	145	7690	2028? Yes, sir. Go ahead. Yeah, go ahead. Pull it out from Shady Grove at 230. 10-4, sir. 230 Shady Grove.
4830	4	2024-10-09 17:02:20	2024-10-09 17:02:27	145	7690	10 quarter time, 1 or 2 PM. Have a good day.
7850	11	2024-10-09 21:29:31	2024-10-09 21:29:42	144	7700	Can you head down to Montgomery Mall, meet up with us, 5343 is there right now. The operators are some issue, but really couldn't explain to us. So can you see what's going on?
5077	2	2024-10-09 17:19:03	2024-10-09 17:19:11	144	7700	They are mobile cars.
5083	6	2024-10-09 17:19:22	2024-10-09 17:19:32	144	7700	Mr. Wells, you're in zone 5, correct? 10-4. 10-4, thank you. No problem.
5102	14	2024-10-09 17:20:07	2024-10-09 17:20:24	149	7695	Good afternoon, Central. This is bus 4054. Good afternoon, 4054. We copy you loud and clear. It is 1 20 PM. You have a safe afternoon. Cancel.
5000	37	2024-10-09 17:14:09	2024-10-09 17:14:50	144	7700	Yeah, Kevin, so I spoke to the shop. They said the bus can keep going, so I checked up on the operator. She's comfortable driving, so she'll shop the bus once she finishes. All right, Tommy, what's wrong with the bus? If the air pressure is at 150, it won't go. What's the problem? The gauge is stuck at 150, and it's making a hissing noise like it's losing air, and she can keep going, so she should be all right. Okay.
4954	3	2024-10-09 17:11:55	2024-10-09 17:11:58	144	7700	ERROR: TRANSCRIPTION_TIMEOUT
5019	2	2024-10-09 17:15:48	2024-10-09 17:15:49	144	7700	Thank you.
5030	2	2024-10-09 17:16:19	2024-10-09 17:16:22	144	7700	Good talk to Michelle.
5079	9	2024-10-09 17:19:07	2024-10-09 17:19:20	144	7700	I have AM over 5. Move to Zone 7, please. Okay, thank you. Thank you.
4918	7	2024-10-09 17:09:22	2024-10-09 17:09:32	144	7700	Yeah, Tim, well, I'm actually in front of her. I'm going to catch her at the next bus stop. I'm going to speak to her. Oh, okay, copy.
5039	2	2024-10-09 17:16:41	2024-10-09 17:16:45	144	7700	One, please. Tenfold.
4944	3	2024-10-09 17:11:13	2024-10-09 17:11:19	144	7700	ERROR: TRANSCRIPTION_TIMEOUT
4914	4	2024-10-09 17:09:15	2024-10-09 17:09:19	144	7700	I'm here for Reg. You ass, you on Varysmail already.
5026	7	2024-10-09 17:15:58	2024-10-09 17:16:13	144	7700	Hey, I'm Chuck. What's going on, buddy? What's up?
5037	8	2024-10-09 17:16:26	2024-10-09 17:16:36	144	7700	We see you here, and then we're not coming through. Tonight, personal cell. Vehicle 1515.
4985	1	2024-10-09 17:13:41	2024-10-09 17:13:42	144	7700	Mobile 40 session.
5609	20	2024-10-09 18:07:35	2024-10-09 18:07:59	145	7690	Good morning. I have run 370. I'm going to be pulling off at Epo Lake. They had a problem with the bus. The fare box would not ship. So I had to take another bus, and I'm not going to be able to pull off on Rockville to do my 59 on time. What's the run number? It's run number 370.
5640	15	2024-10-09 18:10:20	2024-10-09 18:10:36	144	7700	Just up here at North Bend and Lee Hill Road with an overturned scout truck. Vehicles going on a way to north, they are moving that way. South is pretty much blocked at the moment.
9430	2	2024-10-10 00:28:10	2024-10-10 00:28:11	144	7700	World War I and Central.
5641	2	2024-10-09 18:10:39	2024-10-09 18:10:44	144	7700	I count four. I'm sitting out here.
5172	2	2024-10-09 17:25:19	2024-10-09 17:25:21	144	7700	AM 8.
5287	4	2024-10-09 17:37:06	2024-10-09 17:37:10	149	7695	And four. Have a good Monday. Thank you.
5175	12	2024-10-09 17:25:28	2024-10-09 17:25:44	144	7700	I'm AM 8. 10-4, um, wand number 9. I'll send you the picture. Copy.
5177	13	2024-10-09 17:26:08	2024-10-09 17:26:24	149	7695	Good evening, George. It's 4106. You already checked. We've been loud and clear. I'll tell you loud and clear. It is 126-4106. All right. Thank you.
5503	33	2024-10-09 17:57:16	2024-10-09 17:57:52	149	7695	Thanks for coming back. Are you all aware that coming off of Medical Center and making a right on the Key West, the two stops there that are for the 43 and maybe something else, before you make a left on Shady Grove, that they're basically bare? I mean, the signs are there, but there's no numbers on them. Okay, tenfold. Thank you. No problem. I just wanted to bring that. Maybe they purposefully scuffed them so they're going to change routes or something. I don't know. I thought I'd bring it to your attention. Have a good afternoon.
5480	14	2024-10-09 17:56:19	2024-10-09 17:56:38	144	7700	Mobile 5. Mobile 5. Can you please head over to Norbeck and Leah Hill? And can you check that intersection? I just got a call that there's an overturned truck. Thank you.
5286	10	2024-10-09 17:36:53	2024-10-09 17:37:03	149	7695	Good afternoon, Central 4-0-0-9, weather check. Good afternoon, 4-0-0-9, we copy you loud on clear, 1.36 p.m.
5460	24	2024-10-09 17:54:57	2024-10-09 17:55:33	149	7695	Hello, Central. Good afternoon. I'm Sandy, the operator. I'm running late. I'm just going to head to Silver Spring Station for Route 1, but I'm running late, please. 10-4. Go ahead and pull out your run late, please. Because my mom was shooting my bus. Go ahead and pull out your run, please. 10-4. Thank you. Pull it out late.
5471	2	2024-10-09 17:56:15	2024-10-09 17:56:18	144	7700	Number five. Number five.
6728	2	2024-10-09 19:48:32	2024-10-09 19:48:34	144	7700	I'm sorry.
7987	3	2024-10-09 21:40:11	2024-10-09 21:40:14	144	7700	Thank you.
7985	5	2024-10-09 21:40:02	2024-10-09 21:40:08	144	7700	Bye Henry. Four zero zero six is good to go.
7915	16	2024-10-09 21:34:40	2024-10-09 21:34:59	144	7700	Mobile 3? Mobile 3? Here you go. Yeah, 3. It looks like you had keyed up, but I didn't hear you. Did you call central bank? Negative. By the way, I'm here behind the lights, Friendship Heights. Where are the buses exactly?
8060	2	2024-10-09 21:45:29	2024-10-09 21:45:35	144	7700	Okay, simple.
8024	2	2024-10-09 21:42:49	2024-10-09 21:42:51	144	7700	Hold forward session.
8022	8	2024-10-09 21:42:20	2024-10-09 21:42:33	149	7695	4027, I don't hear anything, but when you get down to Rockville, do you ever just...
7899	3	2024-10-09 21:33:09	2024-10-09 21:33:12	144	7700	ERROR: TRANSCRIPTION_TIMEOUT
8038	18	2024-10-09 21:43:44	2024-10-09 21:44:09	144	7700	All right, that's fine. I don't want it to shatter at all. She might hit a speed bump or a fall, and it could end up breaking on her. Do we have a bus maybe coming out of service up here, or should I send her back to Jason? Let me check, but I don't believe we have a bus in that area.
8004	1	2024-10-09 21:40:59	2024-10-09 21:41:00	144	7700	10-4.
8026	9	2024-10-09 21:42:46	2024-10-09 21:43:00	149	7695	I'm not hearing anything from you. Okay, now I can hear you. When you get down to Rockville...
8023	5	2024-10-09 21:42:36	2024-10-09 21:42:43	149	7695	I'm still not hearing anything. Will you get down to Rockville at the end of this trip and head back to the garage to another bus?
7983	2	2024-10-09 21:39:57	2024-10-09 21:40:01	144	7700	Moving through Central.
8216	3	2024-10-09 21:59:42	2024-10-09 21:59:45	144	7700	I'm careful of mobile speech. Appreciate it.
8214	3	2024-10-09 21:59:34	2024-10-09 21:59:37	144	7700	I will fix. The phone was retrieved.
8028	1	2024-10-09 21:43:14	2024-10-09 21:43:15	144	7700	Turn that over before.
7998	20	2024-10-09 21:40:32	2024-10-09 21:40:56	144	7700	So, level 3, what was actually the complaint that the operator had? 10-9, please. What was the complaint that the operator had, and how was it resolved? He was trying to start the engine. He didn't work. I started, I reset it, and I started from back. It's good right now.
5745	3	2024-10-09 18:19:38	2024-10-09 18:19:43	144	7700	ERROR: TRANSCRIPTION_TIMEOUT
5841	5	2024-10-09 18:29:29	2024-10-09 18:29:34	144	7700	Well, this should be bad. This is for me.
5766	1	2024-10-09 18:21:27	2024-10-09 18:21:32	145	7690	516.
5795	3	2024-10-09 18:24:57	2024-10-09 18:25:01	149	7695	725-7-6-9
5824	10	2024-10-09 18:27:21	2024-10-09 18:27:35	145	7690	2016. And our central, um, 2016, radio check. Yeah, 10-4-11-3, central town 14-27.
5758	3	2024-10-09 18:20:52	2024-10-09 18:20:55	144	7700	Hey, I'm mobile six.
5913	7	2024-10-09 18:34:52	2024-10-09 18:35:06	144	7700	Block to Central. Hello, I'm 10-8. I got 20-20.
5938	3	2024-10-09 18:37:02	2024-10-09 18:37:04	144	7700	Good afternoon, Mr. Marshall.
5763	11	2024-10-09 18:20:59	2024-10-09 18:21:14	144	7700	Good morning. Yes, sir. Good afternoon. As usual, I will be 10-7 for the remainder. And I'll see you on Sunday. 10-4. Good night. 10-4. Thank you.
5797	2	2024-10-09 18:25:08	2024-10-09 18:25:10	149	7695	Central 5769.
6031	3	2024-10-09 18:43:27	2024-10-09 18:43:32	144	7700	ERROR: TRANSCRIPTION_TIMEOUT
6043	2	2024-10-09 18:47:17	2024-10-09 18:47:19	149	7695	4125.
6049	3	2024-10-09 18:47:44	2024-10-09 18:47:47	149	7695	All right, 10-4, let me see what we can do to get you around that one moment.
6060	2	2024-10-09 18:48:21	2024-10-09 18:48:23	149	7695	Did you turn on to a side street?
5798	2	2024-10-09 18:25:21	2024-10-09 18:25:23	149	7695	725-769.
5846	2	2024-10-09 18:29:43	2024-10-09 18:29:45	144	7700	10-4, according to Graham.
5917	5	2024-10-09 18:35:19	2024-10-09 18:35:25	144	7700	Zone 7, please. 10-4. Thank you. Zone 7.
8039	5	2024-10-09 21:44:00	2024-10-09 21:44:08	145	7690	For 27. For 27.
5950	4	2024-10-09 18:37:53	2024-10-09 18:37:58	144	7700	Gun 2, please. Gun 2, rápido. Thank you.
8042	10	2024-10-09 21:44:11	2024-10-09 21:44:23	145	7690	Yeah, when you're done with that trip, go ahead and head back to the depot. Yeah, then you get another bus and let us know what you get.
6057	13	2024-10-09 18:48:01	2024-10-09 18:48:18	149	7695	4125? Yeah. Are you on Wilmette Road and Beach Avenue? I could be. I don't see any signs right now. I'm going to have to turn around the bus.
6062	3	2024-10-09 18:48:25	2024-10-09 18:48:28	149	7695	A year.
8044	1	2024-10-09 21:44:25	2024-10-09 21:44:27	145	7690	ERROR: TRANSCRIPTION_TIMEOUT
6047	14	2024-10-09 18:47:26	2024-10-09 18:47:41	149	7695	Yeah, I hear you, 4125. Go ahead with your message. Okay, so I guess it's been an accident on Old Georgetown right before Cedar Lane, and we can't get... It's been blocked off.
6083	20	2024-10-09 18:48:41	2024-10-09 18:49:01	149	7695	All right. The best thing I can recommend is to go across Old Georgetown Road. That's Beach Avenue. Take that all the way to the end. Make a left-hand turn onto Linden Avenue and then a right on the Pooks Hill Road. And that will take you back to 355 by the Beltway.
8059	12	2024-10-09 21:45:13	2024-10-09 21:45:26	144	7700	Yeah, unfortunately, the only possible bus to be switched with is not logged in, and looks like it would be dead hanging back to the garage anyway at this point. So, yeah, send her back to the garage for another bus.
6044	3	2024-10-09 18:47:21	2024-10-09 18:47:24	149	7695	Yeah, hello.
8053	2	2024-10-09 21:45:07	2024-10-09 21:45:08	144	7700	Oh, Mobile 4.
8207	6	2024-10-09 21:59:02	2024-10-09 21:59:08	149	7695	Yeah, that bus is actually writing a bit late. He just made the right on to Fenton from Sligo.
8212	1	2024-10-09 21:59:30	2024-10-09 21:59:31	149	7695	All right. Thank you.
8612	1	2024-10-09 22:47:07	2024-10-09 22:47:08	144	7700	Oh, 45.
8196	4	2024-10-09 21:58:17	2024-10-09 21:58:22	149	7695	Central 5317. 5317.
6099	23	2024-10-09 18:50:34	2024-10-09 18:51:06	149	7695	Central 4125. Go ahead. Okay, my map's showing that you're now Wilmette and Beach Avenue. Basically, you're in a triangle right there, is that correct? Yeah, I'm turning around now. Are you able to safely make a left back onto Beach Avenue? I should be able to.
6103	6	2024-10-09 18:51:07	2024-10-09 18:51:14	149	7695	Okay, do you know the Route 30 at all? No, I don't.
6111	2	2024-10-09 18:52:12	2024-10-09 18:52:14	144	7700	Mobile One Central.
6301	2	2024-10-09 19:08:51	2024-10-09 19:08:53	144	7700	5085.
6288	12	2024-10-09 19:07:59	2024-10-09 19:08:13	149	7695	Central 5332. Central 5332. I have a slow back door. The back door is not closing properly. Can I get a bus switch, please?
6109	15	2024-10-09 18:51:17	2024-10-09 18:51:35	149	7695	Okay, that's fine. Basically, you want to take Beach Avenue over Old Georgetown Road, and I'm going to send you directions, and this will be back to 355, okay? Okay. All right.
6250	8	2024-10-09 19:04:55	2024-10-09 19:05:06	149	7695	Good afternoon, wonderful. I hear you loud and clear. Please make sure you have a safe afternoon. Central is clear at 3 or 5 p.m. Info.
6117	1	2024-10-09 18:52:41	2024-10-09 18:52:42	144	7700	One second one.
6166	26	2024-10-09 18:56:00	2024-10-09 18:56:26	152	7730	Central oil operators on the Gathensburg operators dead hanging down to Bethesda to the Route 70. At this time, we're receiving reports that there was a blockage on Old Georgeown Road. Someone please instead take 270 down to 355. Once again, anyone dead hanging down to Bethesda to the Route 70, please do not use Old Georgeown Road and say use 355. Central is clear at 256.
6114	2	2024-10-09 18:52:23	2024-10-09 18:52:26	144	7700	I bought somebody landing transit.
6153	28	2024-10-09 18:55:12	2024-10-09 18:55:44	144	7700	All right, so 270 throws? No, head down to Old Georgetown Road. Once you go underneath the Beltway, it should be a couple blocks down the street. It's going to be affecting the Route 70s heading to Bethesda. So I'm going to tell all the Route 70s are probably heading down there to take 255 and then Old Georgetown Road.
8199	11	2024-10-09 21:58:24	2024-10-09 21:58:36	149	7695	Offense 317, go ahead with your message. I'm supposed to be doing a bus switch with 5069, supposed to be around 16. I was making sure I'm supposed to be in a 16 then.
6465	4	2024-10-09 19:23:13	2024-10-09 19:23:19	144	7700	Be a copy. One. Start four. Thank you.
6402	1	2024-10-09 19:17:34	2024-10-09 19:17:35	144	7700	ERROR: TRANSCRIPTION_TIMEOUT
6298	2	2024-10-09 19:08:45	2024-10-09 19:08:46	144	7700	5085.
8202	2	2024-10-09 21:58:41	2024-10-09 21:58:43	149	7695	God, 10, 4, 3, 1, 1.
6463	5	2024-10-09 19:22:57	2024-10-09 19:23:01	144	7700	Uh, this is a twin rotation and have them pull it out late, please.
6445	2	2024-10-09 19:21:29	2024-10-09 19:21:34	144	7700	Mobile A, Mobile A.
6450	13	2024-10-09 19:21:37	2024-10-09 19:21:51	144	7700	Yes, sir. I'm just letting you know that he's in the express lanes and not the two local lanes. And he's right past the exit for the apartment village.
6248	7	2024-10-09 19:04:45	2024-10-09 19:04:53	149	7695	Central 4134, radio check.
6225	20	2024-10-09 19:01:33	2024-10-09 19:02:04	144	7700	Mobile 5. Mobile 5. Hey, Mobile 5, were you sent over to Leo to see the southbound lane is closed? There's a turnover dump truck in that area? Yes, I reported back to Carlos, I believe. Okay, 10th floor. Okay, back over there.
6126	2	2024-10-09 18:53:37	2024-10-09 18:53:39	144	7700	Central Mobile 4.
6134	18	2024-10-09 18:53:43	2024-10-09 18:54:09	144	7700	Hey, if you're available, if you head down to Old Georgetown Road and Beach Avenue, that's just inside of 270 on Old Georgetown Road, I'm going to record if there's a crash in that area and let me get around. 10-4, Old Georgetown and Beach Road? 10-4, it's actually Beach Ave. 10-4.
6142	5	2024-10-09 18:55:04	2024-10-09 18:55:09	144	7700	I'm all for correction. That's actually inside the beltway, not 270. That's just inside the beltway.
6202	5	2024-10-09 18:59:17	2024-10-09 18:59:24	144	7700	Egin mótú til sem faraður minn, Ján Guilín.
6292	3	2024-10-09 19:08:20	2024-10-09 19:08:24	149	7695	We'll have someone take a look at it when you get back to Glenmont.
6459	17	2024-10-09 19:22:23	2024-10-09 19:22:44	144	7700	I got the operator from Silver Spring back to the depot. He's trying to go back on 6339. Where would you like him to pick up his running? He on 1132.
6457	13	2024-10-09 19:22:00	2024-10-09 19:22:14	144	7700	You say he's right past the exit of Montgomery Village in the express lane, right? That is correct. He's not in the local lane. So, just so you know.
6438	4	2024-10-09 19:20:51	2024-10-09 19:20:55	151	7720	Yeah, ID is 2325.
6273	11	2024-10-09 19:06:38	2024-10-09 19:06:51	144	7700	If you knock down there at Old Georgetown, you can disregard it. We hear it's back open. Because I've been on Old Georgetown, I haven't seen anything, so. All right, copy that.
6201	2	2024-10-09 18:59:06	2024-10-09 18:59:10	144	7700	Thank you.
6436	12	2024-10-09 19:20:33	2024-10-09 19:20:48	151	7720	Yeah, I'm talking to you on the fallback channel. Just continue on your run, follow your run sheet. It's a 10-4. A 10-4 so I can document what run are you on and your ID number?
6439	4	2024-10-09 19:20:58	2024-10-09 19:21:04	151	7720	Daniel, run? Run is 349.
6404	3	2024-10-09 19:17:39	2024-10-09 19:17:42	144	7700	1830, coordinator Moore.
6300	6	2024-10-09 19:08:43	2024-10-09 19:08:48	149	7695	Please continue on route. I'll see you back in the corner to meet you when you get back to Glenmont at about 336.
6269	3	2024-10-09 19:06:32	2024-10-09 19:06:37	144	7700	And so I'm going to go for it.
6321	13	2024-10-09 19:10:25	2024-10-09 19:10:47	144	7700	Central Mobile 5. Mobile 5. If you're up at Glenmont at about 336, can you check the back door, bus 5332? He says it's closing real slowly. Careful. Okay, bye next.
6649	4	2024-10-09 19:44:16	2024-10-09 19:44:20	144	7700	I'm working at this time and there's no buses for our service. Let me double check.
6399	17	2024-10-09 19:16:33	2024-10-09 19:17:00	149	7695	Central, 4137. 4137, Central. Good afternoon, 4137. We'll have your message. 4137, you're ready to take. 4137, we hear you loud and clear. Please make sure you're on a proper pre-trip before leaving. Central's clear at 316. Copy that.
6120	5	2024-10-09 18:53:11	2024-10-09 18:53:18	144	7700	5-7-6-9, Charles. 5-7-6-9. This is on and running right now.
6442	3	2024-10-09 19:21:06	2024-10-09 19:21:11	151	7720	All right. Thank you.
6414	17	2024-10-09 19:18:08	2024-10-09 19:18:31	144	7700	Moore, I need you in Zone 8, and I need you to please head on 270 North. I got a bus that's broke down. He's on 270? Yeah, 10-4, bus 5763.
6560	1	2024-10-09 19:31:54	2024-10-09 19:31:55	144	7700	Fanform away.
6476	6	2024-10-09 19:24:13	2024-10-09 19:24:20	144	7700	What was six? What was seven, Mr. Broccoli? Give me a landline. All right. Thanks, bro.
6558	3	2024-10-09 19:31:47	2024-10-09 19:31:52	144	7700	Morning, ten five.
6686	4	2024-10-09 19:45:49	2024-10-09 19:45:54	144	7700	ERROR: TRANSCRIPTION_TIMEOUT
6660	4	2024-10-09 19:45:05	2024-10-09 19:45:10	144	7700	Careful. I know you have like a 15 minute break over here. I don't know.
6658	6	2024-10-09 19:44:57	2024-10-09 19:45:04	144	7700	Yeah, 14, there's no buses going out of service from the Glenmont area within the next hour.
6671	13	2024-10-09 19:45:14	2024-10-09 19:45:27	144	7700	All right, if the complaint is the back door doesn't work, then we'll have to use the front door. We can try to see if I can get a bus quicker, but unfortunately at this time, no one's going out of service at Clermont, nor does the garage have any buses available.
6647	1	2024-10-09 19:43:59	2024-10-09 19:44:01	144	7700	Oh, five, six, four.
6720	8	2024-10-09 19:47:51	2024-10-09 19:48:00	144	7700	Good afternoon, sir. Good afternoon, ma'am. 7143.
6716	3	2024-10-09 19:47:39	2024-10-09 19:47:41	144	7700	Coordinator Z, Central.
7138	6	2024-10-09 20:21:23	2024-10-09 20:21:32	144	7700	All right, AM7. Have a good evening. 10-4, see you tomorrow. 10-4, sir. Be safe.
6812	2	2024-10-09 19:56:47	2024-10-09 19:56:50	149	7695	Check to the 6003.
6811	5	2024-10-09 19:56:26	2024-10-09 19:56:36	144	7700	Go 7. I'm looking to adjourn to the cell phone, please.
13811	4	2024-10-10 14:08:14	2024-10-10 14:08:18	144	7700	Mobile 8 4098 back in the depot.
6983	2	2024-10-09 20:09:34	2024-10-09 20:09:37	149	7695	What are you doing now?
6897	10	2024-10-09 20:02:56	2024-10-09 20:03:06	145	7690	When you get to Montgomery Village, touch it by yourself for a few minutes, see if it resets, and I'm going to look at your schedule and see what I can do for you.
6804	6	2024-10-09 19:56:00	2024-10-09 19:56:07	144	7700	Hey, Carlos. I'm 10-8 with car 12-64. Where do you want me to go? 10-6, please.
7106	5	2024-10-09 20:19:57	2024-10-09 20:20:06	144	7700	AM 7.
6996	2	2024-10-09 20:11:23	2024-10-09 20:11:25	149	7695	Central five zero five nine
6955	13	2024-10-09 20:07:22	2024-10-09 20:07:35	145	7690	Dráfthörnusindrandís Michael Salomon was fifty and sixty-four.
6821	7	2024-10-09 19:56:59	2024-10-09 19:57:10	149	7695	Uh, 6003, uh, what run are you doing? My old guy's not working. Uh, 508.
6816	3	2024-10-09 19:56:54	2024-10-09 19:56:57	149	7695	603 to Central.
6809	2	2024-10-09 19:56:21	2024-10-09 19:56:25	144	7700	7th and Central.
6801	4	2024-10-09 19:55:53	2024-10-09 19:55:57	144	7700	Coordinator, Houston, Central. Good afternoon, Houston.
6870	8	2024-10-09 20:00:34	2024-10-09 20:00:44	145	7690	Yeah, copy. Can you pick it up at 424? Careful. I'm on my way.
7009	4	2024-10-09 20:11:51	2024-10-09 20:12:01	149	7695	I'm sorry, can you repeat that? Alright.
6999	2	2024-10-09 20:11:33	2024-10-09 20:11:35	149	7695	50-59, go ahead.
6901	2	2024-10-09 20:03:08	2024-10-09 20:03:10	145	7690	Thank you.
6807	6	2024-10-09 19:56:10	2024-10-09 19:56:18	144	7700	Ten nine. Seven six, please. Seven six. Seven six. Ten four.
10673	24	2024-10-10 04:19:56	2024-10-10 04:20:31	149	7695	Central 4023. Yeah, I don't bust at this mall. Yeah, I see you at Montgomery Mall. The coordinator should be there with the regular operator in a couple minutes. He's the one that will give you a ride back to the garage. And your desk is aware you're doing a switch for us. So that, please put a voucher in. Careful. Careful, thanks.
7005	4	2024-10-09 20:11:44	2024-10-09 20:11:48	149	7695	They're heading back to Gaurav.
6866	12	2024-10-09 20:00:11	2024-10-09 20:00:23	145	7690	Good afternoon, this is operator 3320 with bus number 5325. I'm doing run number 94. I'm just now getting a bus. I'm trying to see what y'all want me to pick it up at.
6823	10	2024-10-09 19:57:10	2024-10-09 19:57:21	149	7695	All right, 10-4. We might have to have you do a bus switch when you get to Briggs Cheney. So when you get to Briggs Cheney, please stand by. We'll get a hold of you. All right, 10-4.
6739	10	2024-10-09 19:48:53	2024-10-09 19:49:06	144	7700	7 to Central. Go ahead, 7. Go ahead, 7. 10-5-20-7, please stand by. Okay. And then, Garrett, give me a landline when you talk.
7003	3	2024-10-09 20:11:37	2024-10-09 20:11:41	149	7695	Uh, 1559, are you dead hanging back to the garage?
6979	2	2024-10-09 20:09:07	2024-10-09 20:09:09	149	7695	Central 5039.
6986	14	2024-10-09 20:09:39	2024-10-09 20:09:59	149	7695	Uh, five zero three nine, what run are you doing? Seven four nine. Okay, it looks like there's two people on our run. Uh, I also have another bus that looks like it's on our run. Let me see what's going on and give you a call back. Okay.
6981	2	2024-10-09 20:09:18	2024-10-09 20:09:19	149	7695	Central 5039.
7073	1	2024-10-09 20:17:49	2024-10-09 20:17:50	144	7700	Marvel 8.
7266	3	2024-10-09 20:35:50	2024-10-09 20:35:53	144	7700	ERROR: TRANSCRIPTION_TIMEOUT
7224	4	2024-10-09 20:30:54	2024-10-09 20:30:58	147	7710	4024 Central.
7101	18	2024-10-09 20:19:29	2024-10-09 20:19:50	144	7700	All right, thank you. I'll tell them deadhead to Germantown. That's 10-4. If you wouldn't mind following behind him just in case something happens, and I'm going to get a bus switch to him. All right, thank you. Thank you, Morris.
7076	2	2024-10-09 20:18:03	2024-10-09 20:18:07	144	7700	Bye. Bye.
7284	6	2024-10-09 20:37:53	2024-10-09 20:38:01	145	7690	Yeah, that has a silver spring pulled out of your house, 28. All right, 10-4, covered in.
7134	1	2024-10-09 20:21:18	2024-10-09 20:21:20	144	7700	I am seven.
7281	22	2024-10-09 20:37:13	2024-10-09 20:37:37	145	7690	Good afternoon. This is 5027. My block is 92. I'm just getting a bus. I'm supposed to pull it out to do 11 from French Pikes at 425, but I'm just getting a bus. What else do you want me to do? What's the run number again? The run number is 92.
7307	4	2024-10-09 20:40:45	2024-10-09 20:40:53	149	7695	Central 5364. Good afternoon, 364.
7189	2	2024-10-09 20:27:23	2024-10-09 20:27:26	144	7700	I'm level eight.
7396	17	2024-10-09 20:47:28	2024-10-09 20:47:46	144	7700	Yeah, we got a fire EMS on the corner of Ramsey and, um, Ramsey and Wayne. Any buses leaving out at the top second level is going to be blocked from making that right turn.
8308	14	2024-10-09 22:09:12	2024-10-09 22:09:28	149	7695	All right, 10-4. In the meantime, please ride up on the VCR, continue en route. If you feel unsafe to have a bike on, please let the passengers know and apologize. Yeah, 10-4.
8309	1	2024-10-09 22:09:30	2024-10-09 22:09:31	149	7695	What's up with this?
8502	2	2024-10-09 22:32:31	2024-10-09 22:32:33	145	7690	Thank you.
8575	4	2024-10-09 22:43:15	2024-10-09 22:43:20	144	7700	Moment please, Supervisor John.
7391	2	2024-10-09 20:47:13	2024-10-09 20:47:14	144	7700	Well, who am I saying so?
8566	2	2024-10-09 22:41:35	2024-10-09 22:41:36	144	7700	Careful man, Cindy.
7423	1	2024-10-09 20:49:50	2024-10-09 20:49:52	144	7700	All right, turn forward.
7422	10	2024-10-09 20:49:36	2024-10-09 20:49:48	144	7700	On my map, it looks like 6012 is trying to make the right-hand turn. Are you there right now? No, I can't say it because I'm blocking up there.
7418	2	2024-10-09 20:49:30	2024-10-09 20:49:34	144	7700	Sounds on mobile one. Oh, yeah.
7425	3	2024-10-09 20:49:56	2024-10-09 20:49:59	144	7700	Okay, yeah, he moved on my map.
7694	17	2024-10-09 21:14:21	2024-10-09 21:14:41	144	7700	Operator 4-0-0-0, I'm sorry, 4-0-0-0. Go ahead with your message again, please. The bus is stopping to don't restart the bus, not engine. Are you saying that the bus stopped, it won't restart?
7706	18	2024-10-09 21:15:29	2024-10-09 21:15:52	144	7700	Yeah, 4006 on Wisconsin Avenue by Friendship Heights Station is having issues. 4006, Wisconsin Avenue, close to Friendship Heights. On my way. 10-4, thank you.
7696	3	2024-10-09 21:14:45	2024-10-09 21:14:49	144	7700	A fact.
7680	2	2024-10-09 21:12:56	2024-10-09 21:13:00	149	7695	Central at 2030.
7468	2	2024-10-09 20:53:27	2024-10-09 20:53:29	144	7700	4-7 to Central.
7568	4	2024-10-09 21:02:43	2024-10-09 21:02:48	144	7700	Go ahead, 93. I disregard. We see it now. Never mind.
7567	5	2024-10-09 21:02:31	2024-10-09 21:02:37	144	7700	I appreciate that. Thank you. 23.
7553	2	2024-10-09 21:01:48	2024-10-09 21:01:52	144	7700	4009.
7564	8	2024-10-09 21:02:21	2024-10-09 21:02:29	144	7700	Can you repeat that last part, please? Yes, it's a black zippered pencil case.
7692	10	2024-10-09 21:13:50	2024-10-09 21:14:01	144	7700	The engine was starting for the engine
7700	2	2024-10-09 21:15:23	2024-10-09 21:15:25	144	7700	Mobile 3. Mobile 3.
8579	2	2024-10-09 22:43:40	2024-10-09 22:43:42	144	7700	Therefore, Mr. Z.
8614	11	2024-10-09 22:47:45	2024-10-09 22:47:58	144	7700	Yeah, we'll have the deaths do the incident report thing, and that's going to take some time. I suspect that will be a missed trip. We'll let the deaths meet. We'll speak to the deaths. All right.
10696	18	2024-10-10 04:24:30	2024-10-10 04:24:52	144	7700	Mobile 3. Go ahead, 3. Last 26 from Montgomery Mall is going to be on time. Operator is in my truck, and I'm heading towards Silver Spring. All right, 10-4. Thank you.
8542	32	2024-10-09 22:37:24	2024-10-09 22:38:00	149	7695	57.7, go ahead with your message. Thank you.
8510	1	2024-10-09 22:33:05	2024-10-09 22:33:08	145	7690	ERROR: TRANSCRIPTION_TIMEOUT
8508	2	2024-10-09 22:32:59	2024-10-09 22:33:03	145	7690	5-6-8 was your message.
21193	3	2024-10-11 02:08:13	2024-10-11 02:08:15	151	7720	ERROR: TRANSCRIPTION_TIMEOUT
9102	3	2024-10-09 23:42:31	2024-10-09 23:42:38	144	7700	I'll speak to 10-5. 10-4.
8821	3	2024-10-09 23:13:29	2024-10-09 23:13:35	149	7695	4078, we got an RTT from you, so go ahead with your message.
8880	13	2024-10-09 23:17:13	2024-10-09 23:17:32	144	7700	Do not chase the bus. I mean, if she continues to have a problem, she'll have to call back. But I told her to stay put. So let's disregard for further notice. All right.
8875	1	2024-10-09 23:16:48	2024-10-09 23:16:51	144	7700	Turn for mobile 7.
8811	22	2024-10-09 23:12:41	2024-10-09 23:13:05	145	7690	She doesn't remember where to get off at. Do you know where that is, please? Where to let her off at, please? Could you give me that street name again? She said it's a house. I'm on the 43 route going towards the hospital.
8846	8	2024-10-09 23:14:34	2024-10-09 23:14:49	144	7700	Central Mobile 7. And we're out right now. All right, 10-4. Yeah, she's still a lick for us. All right, 10-4.
8815	8	2024-10-09 23:13:09	2024-10-09 23:13:18	145	7690	And what's his street name? Berkeley.
9044	2	2024-10-09 23:36:27	2024-10-09 23:36:29	144	7700	I was 7th of Central.
8818	4	2024-10-09 23:13:18	2024-10-09 23:13:26	149	7695	Central 4078 4078
8985	9	2024-10-09 23:30:35	2024-10-09 23:30:47	145	7690	4078 Go ahead, 4078 Yeah, I'm fine now, he's off the bus What are you paying for?
8824	6	2024-10-09 23:13:30	2024-10-09 23:13:38	145	7690	Yeah, give me a second. I'm going to look for it. I'm going to see if I can find it.
9049	1	2024-10-09 23:36:39	2024-10-09 23:36:40	144	7700	How for? What was it?
8825	2	2024-10-09 23:13:36	2024-10-09 23:13:39	149	7695	What is up, Nick?
8832	15	2024-10-09 23:13:41	2024-10-09 23:14:00	149	7695	Yeah, 4078, go ahead with your message. The past finger that sprayed whatever he sprayed on me last week is here right now on my bus. About a week ago, last Wednesday.
9067	11	2024-10-09 23:38:22	2024-10-09 23:38:35	144	7700	I told him to stand by, so he still looks like he's at Monroe Place. At first it looked like he was moving, but right now he looks like he's still at Monroe Place.
9064	5	2024-10-09 23:38:13	2024-10-09 23:38:22	144	7700	So, Carlos, is he going to be at Rockville Metro or is he going to stay where he's at?
9057	15	2024-10-09 23:37:10	2024-10-09 23:37:38	144	7700	You said Monroe? Yeah, he's headed to the station. 10-4. 41-40 doing the 46. I'm going to assist mobile 6. Is that on the west side or the east side? 46, baby. 10-4.
9048	3	2024-10-09 23:36:32	2024-10-09 23:36:36	144	7700	Go ahead, Simon. I'm going to take a quick chance to have another break.
9053	14	2024-10-09 23:36:52	2024-10-09 23:37:07	144	7700	over by the college. I got bus 4140 on Monroe Street. It said a passenger kicked the door and I broke the glass on it. The passenger's still on the bus.
9050	3	2024-10-09 23:36:44	2024-10-09 23:36:52	144	7700	Oh, sir. Are you at Rockwood Station?
9045	16	2024-10-09 23:36:04	2024-10-09 23:36:30	145	7690	3306, bus 4140. A guy just kicked the bus and break the guys at the passenger door. Yeah, 10-4, I copy. Is the person still on the bus? Still on the bus right now. Alright, 10-4, stand by for coordination.
8032	20	2024-10-09 21:43:20	2024-10-09 21:43:42	144	7700	Yeah, I'm here with 5343. So the driver's side, the safety door, it flew open and hit the pole. And the glass part of the door is cracked. So I'm going to have to pull it off the road. The whole glass part is cracked.
7853	2	2024-10-09 21:29:44	2024-10-09 21:29:48	144	7700	Simple. All right.
8211	11	2024-10-09 21:59:13	2024-10-09 21:59:30	149	7695	Yeah, that bus is running a bit late. He just made the right from Sligo on the Fenton. And yes, his next trip is a 16, so yes, the 16 bay. Copy, thank you.
17018	12	2024-10-10 18:53:40	2024-10-10 18:53:58	145	7690	5325. 5325. 5325. Give your desk a landline. Give your desk a landline. 10-4? Okay, 10-4.
9273	1	2024-10-10 00:07:51	2024-10-10 00:07:54	144	7700	Thank you.
9394	14	2024-10-10 00:22:41	2024-10-10 00:23:04	144	7700	Mobile one. Please. Yeah, the Flexbus 1005 is at Spring Street in Cameron. And you can't get the wheelchair ramp to come back up. All right.
9267	6	2024-10-10 00:06:24	2024-10-10 00:06:30	144	7700	Thank you.
9165	3	2024-10-09 23:50:00	2024-10-09 23:50:05	144	7700	And we'll find them fast.
9306	2	2024-10-10 00:13:35	2024-10-10 00:13:37	149	7695	Central, 5330.
9238	6	2024-10-10 00:01:16	2024-10-10 00:01:27	144	7700	10-4. 7 is central. 5-7. 2-8 from Miller Break. Thank you. Appreciate it. 10-4.
9271	18	2024-10-10 00:07:28	2024-10-10 00:07:48	144	7700	All right, because I just came upstairs. I was just checking to see what the hell's going on. No, I'm going to have two meet him over at Tacoma Park. I'm trying to figure that out, too, because if he's talking about registration and citations, well, what were you doing? All right, I'm going to find out.
9357	1	2024-10-10 00:18:29	2024-10-10 00:18:30	144	7700	Thank you.
9355	6	2024-10-10 00:18:15	2024-10-10 00:18:27	144	7700	That's a 10-4. Pick up a 9-50. Yes, that's correct. 10-4. Thank you, David.
9315	1	2024-10-10 00:14:01	2024-10-10 00:14:02	149	7695	Disregard him.
9280	13	2024-10-10 00:08:58	2024-10-10 00:09:11	144	7700	Number one, they had to take a lady off the bus for a cafe's beer, something like that. I guess they're from the Metro bus. I'm not really sure. They didn't really give me much information.
9251	1	2024-10-10 00:04:51	2024-10-10 00:04:52	144	7700	Three glasses.
9244	22	2024-10-10 00:02:14	2024-10-10 00:02:40	144	7700	Yeah, I didn't think about it really myself, but when I feel it, it's like it is bulging out, and it's one bump that's going to all come out.
9247	12	2024-10-10 00:02:43	2024-10-10 00:03:01	144	7700	Yeah, 10-4. 10-4. Make sure you get the hard drive for me, please. 10-4. I'm going to take him back to the depot. Yeah, 10-4. Make sure you get the hard drive for me, too, please. I already got that. Yeah, I don't even know why I asked.
9499	2	2024-10-10 00:35:27	2024-10-10 00:35:32	144	7700	Bye. Bye for the rest of the evening.
9483	3	2024-10-10 00:32:44	2024-10-10 00:32:49	144	7700	Whoa, whoa, whoa, I'm careful. Careful.
9311	8	2024-10-10 00:13:40	2024-10-10 00:13:50	149	7695	5330, yes sir. 5330, go ahead with your message.
9316	2	2024-10-10 00:14:05	2024-10-10 00:14:07	149	7695	Of course.
9242	1	2024-10-10 00:02:10	2024-10-10 00:02:12	144	7700	I'm over six.
9314	4	2024-10-10 00:13:54	2024-10-10 00:13:58	149	7695	One committee said.
9496	1	2024-10-10 00:35:23	2024-10-10 00:35:24	144	7700	Cool, fabulous, natural.
9441	5	2024-10-10 00:29:23	2024-10-10 00:29:30	144	7700	Mobile line, he's at 2nd Avenue and Cameron. All right, circle.
9506	2	2024-10-10 00:36:03	2024-10-10 00:36:05	144	7700	Well, one, one, one, one, two, one.
9509	4	2024-10-10 00:36:13	2024-10-10 00:36:17	144	7700	I'm going to have to start charging off of my mechanical services.
9508	3	2024-10-10 00:36:07	2024-10-10 00:36:10	144	7700	Thank you, sir. Appreciate it.
9851	1	2024-10-10 01:30:34	2024-10-10 01:30:35	144	7700	4121.
10532	3	2024-10-10 03:56:49	2024-10-10 03:56:52	144	7700	My central model, uh, 3, this is it.
8019	2	2024-10-09 21:42:15	2024-10-09 21:42:16	149	7695	Central 4027.
7917	6	2024-10-09 21:35:03	2024-10-09 21:35:11	144	7700	He's on Wisconsin Avenue in the 34 Bay. 10-4 is a good health.
10883	1	2024-10-10 04:57:13	2024-10-10 04:57:15	144	7700	What was that?
10538	21	2024-10-10 03:56:55	2024-10-10 03:57:20	144	7700	I need to go over to East Jefferson Street on Route 26 over by Panera Bread. 5081 broke down. He was doing the 23 to the mall, 26 to the mall. I'm trying to see if I can get a bus over to him also. East Jefferson and what?
7697	5	2024-10-09 21:14:52	2024-10-09 21:14:59	144	7700	Okay, stand by for a coordinator. This is about to be his second bus.
6642	16	2024-10-09 19:42:56	2024-10-09 19:43:22	144	7700	Mobile 5 Central. Mobile 5. 10-4. Alright, 10-4 on Mobile 5. He's not going to be able to get a bus switch because Silver Spring has no buses available and there's no one coming out of Glenmont at this time. 10-4.
10542	10	2024-10-10 03:57:22	2024-10-10 03:57:37	144	7700	It's East Jefferson and Ring House. It's also across from the Panera Bread. Is this south of Rollins? 10 for about 26. 10 for us, correct.
10553	10	2024-10-10 03:58:39	2024-10-10 03:58:52	149	7695	4023, when you get to front of the place, can you do me a favor and get it up to Mugabe Mall? One of the six Route 26 buses broke down.
6648	9	2024-10-09 19:44:03	2024-10-09 19:44:13	144	7700	Go ahead, Flash. Yeah, I'll go ahead, Sandy. I think you leave us a bunch of service here in Glenmont in a few minutes as well. I try to switch along with that one.
10646	16	2024-10-10 04:12:27	2024-10-10 04:12:51	144	7700	Central Mobile 3, Mr. Z. There you go. Do you have an ETA when you might be with 5081 over there on East Jefferson? My ETA was one minute ago. It's in my bus. I'm going to leave right now towards Montgomery Mall.
10649	2	2024-10-10 04:13:06	2024-10-10 04:13:08	144	7700	Tegin fór.
6430	13	2024-10-09 19:20:11	2024-10-09 19:20:31	151	7720	Since we got a copy. Air Central 4117, go ahead. Yeah, my clever device froze, so I did a shutdown, restart, disconnect battery, and I still can't log back in.
6297	11	2024-10-09 19:08:29	2024-10-09 19:08:39	149	7695	If you can't switch me on, I'll take it down as soon as possible as I can to get a break.
7847	1	2024-10-09 21:29:23	2024-10-09 21:29:25	144	7700	Turn to the mobile phone.
7684	17	2024-10-09 21:13:01	2024-10-09 21:13:21	149	7695	20-30, radio check, please. 2-0-3-0, we're hitting it loud and clear. By the way, you hit the PRTT button. Just a great heads up. But we're hitting it loud and clear. Have a safe afternoon. Central Clear, 5-13. I apologize and 10-4.
10557	11	2024-10-10 03:59:01	2024-10-10 03:59:14	149	7695	You said they had the first year, I mean, they had said the mall? Correct, Montgomery Mall for the Rock 26.
10201	2	2024-10-10 02:29:17	2024-10-10 02:29:19	144	7700	Oh, for example.
10204	1	2024-10-10 02:29:33	2024-10-10 02:29:34	144	7700	Thanks for your help.
10137	23	2024-10-10 02:18:04	2024-10-10 02:18:32	149	7695	Central. I'm not sure if anybody reported in that, but the bathroom at Montgomery Mall Transit, the lock on the door is busted up, and you got, like, pretty much everybody's using it. 10-4? All right, 10-4, yes. First, I heard about it, but I'll make sure it gets reported up. Central, thank you.
10131	26	2024-10-10 02:17:04	2024-10-10 02:17:31	152	7730	Good evening ride-on operator. It's going to be your safety message of the day. Follow up on turns using your mirrors. Anytime you make a turn or go through a curve, you should check your mirrors. Checking your mirrors will let you know the available space around your bus. Making a turn at the correct speed and checking your mirrors will eliminate accidents. Why do we do this? To know our surroundings. Central clear at 1017 p.m.
10132	2	2024-10-10 02:17:59	2024-10-10 02:18:00	149	7695	Central 5 3 1 4
10202	1	2024-10-10 02:29:23	2024-10-10 02:29:26	144	7700	Go ahead, poor.
10203	4	2024-10-10 02:29:27	2024-10-10 02:29:30	144	7700	Probably 10 seconds for the remainder.
10564	1	2024-10-10 03:59:42	2024-10-10 03:59:43	149	7695	All right. Thank you.
10294	3	2024-10-10 02:43:44	2024-10-10 02:43:47	144	7700	ERROR: TRANSCRIPTION_TIMEOUT
10566	3	2024-10-10 03:59:58	2024-10-10 04:00:01	144	7700	Um, Central Mobile, Central Missouri.
6584	36	2024-10-09 19:35:45	2024-10-09 19:36:23	144	7700	Yeah, I'm trying to get off of here because 270 is too congested for anything to come up here, bus switching or a tow. So I'm trying to get as far as I can. I might have to turn off of Middlebrook and put the bus off for Middlebrook somewhere if we don't get to Germantown. Copy? That is a 10-4. And I'll wait for your cue as to where to go. Thank you. I appreciate it.
6579	20	2024-10-09 19:35:19	2024-10-09 19:35:40	144	7700	Okay, we got to start. I'm going to see if we can get up to Germantown and see how it runs from there. We might need a bus switch. Copy? That's a 10-4. I'm going to go ahead and see if I can't get a switch up to Germantown.
10563	19	2024-10-10 03:59:17	2024-10-10 03:59:40	149	7695	You want me to get a bus for somebody who's in the right 26? Negative. I need you to take your bus up to the mall because another bus broke down. A coordinator will give you a ride back to the garage. Oh, thanks, Paul.
6281	20	2024-10-09 19:07:05	2024-10-09 19:07:25	152	7730	Good afternoon, Central. All operators, current time is 3.07 p.m. Gates is with operators, Ted Haina and Bethesda for Route 70. You can resume using Old Georgetown Road. Once again, for Route 70, for the Deadhead, also down to Bethesda, resume using Old Georgetown Road. Old Georgetown Road is open for the earlier crash. Central, clear, 3.07.
10579	26	2024-10-10 04:00:39	2024-10-10 04:01:07	144	7700	Negative. The bus is still on a standstill at its location. So what I need you to do is go to the location of the bus over there on East Jefferson Street, and I get that operator and bring them to Montgomery Mall to switch to 4023, and then bring the operator that's calling on 4023 back to Silver Spring Garage.
7435	31	2024-10-09 20:50:40	2024-10-09 20:51:12	152	7730	Central off-loss buses. Central off-loss buses. We're receiving an EMS activity at the intersection of Lane Avenue and Ramsey. So once you come out of Silver Spring Training Center, you will have difficulty making a right-hand turn on the lane. So instead, please make a left on the lane and a right on the Colesville. Once again, anyone operating a 60-foot bus will have a difficulty making a right from Ramsey on the lane due to EMS activity at the corner there. So instead, please make a left on the Lane Avenue and a right on the Colesville Road. Central is clear. 4.51.
7599	8	2024-10-09 21:05:25	2024-10-09 21:05:35	144	7700	57-56. 57-63 is back in the depot. 10-4, I appreciate that. Thank you, sir.
10574	30	2024-10-10 04:00:04	2024-10-10 04:00:37	144	7700	Number 3, when you get the bus 5081, if you're able to get the bus started, please take the operator to Montgomery Mall. I have bus 4023 Dehane up there from Friendship Heights. He will have to use that bus for his next trip, the last trip of the evening from Montgomery Mall. And then you will have to bring the other operator back to the garage. 10-4, you want me to go to Montgomery Mall, correct? The bus is rolling? That's what you say?
7474	19	2024-10-09 20:53:32	2024-10-09 20:53:53	144	7700	I got bus 4027 in Lake Forest Transit, but he's going to turn to 56. The rear window is like a boat that holds the window in. It's kind of stripped out, and the window flexes a little bit. So I think he's going to have a bus switch at Rockville Station.
7589	17	2024-10-09 21:04:52	2024-10-09 21:05:11	144	7700	Hello, Central. I checked the bus. There's nothing left. I checked before starting my 15th route. There's nothing. On the floor, in the sleep, nothing. Alright, 10-4. Thank you. I appreciate that. 10-4.
9000	3	2024-10-09 23:32:54	2024-10-09 23:32:57	144	7700	ERROR: TRANSCRIPTION_TIMEOUT
9282	21	2024-10-10 00:09:14	2024-10-10 00:09:38	144	7700	Yeah, but why would they be asking him for his registration? Like I said, I don't know. They didn't give me much information. They said it was more so, they got a guy that, one of the officers that training, so I guess it was just like, what are they training procedures that they do with the buses? 10-4.
9261	36	2024-10-10 00:04:57	2024-10-10 00:05:43	144	7700	Three, five, six. Three, five, six. Yeah, I, um, when I was in Silver Spring Station, uh, they, uh, waiting for 17, uh, I had two passengers. And two, uh, Metro Police officers came in and checked the lady, one of the lady, and then he asked me registration. I asked him why. He said just for a citation. Three, five, six. Three, five, six. Please give me a landline. Gift Central a landline.
9236	20	2024-10-10 00:00:48	2024-10-10 00:01:14	144	7700	Sorry, David, can you send my damn message? You didn't happen to call a bus to come switch this out, did you? I'm thinking the whole bottom glass is shattered and it's bulging out a little bit. I'm afraid it'll shatter out. I haven't, but let me see if somebody's coming out of service real quick and then I'll let you know.
7560	18	2024-10-09 21:01:58	2024-10-09 21:02:19	144	7700	4009. Go ahead, Central. 4009. Yeah, good afternoon, 4009. We had a passenger leave a black zippered pencil case, possibly on your bus. Could you please check your bus and let me know if you found that?
10421	2	2024-10-10 03:36:05	2024-10-10 03:36:07	144	7700	No, we're on sensor.
10423	3	2024-10-10 03:36:10	2024-10-10 03:36:16	144	7700	Go ahead, Mike. Time for a reminder. Time for a good night.
9269	11	2024-10-10 00:07:12	2024-10-10 00:07:25	144	7700	Hey, Tina, what's that bus number? It's 356. He's on Fenton during the 17th.
6593	18	2024-10-09 19:37:44	2024-10-09 19:38:02	144	7700	Excuse me, Tina. He's doing a 79, so we're going to try to get as far as we can and then see what happens from there. Copy? That's a 10-4, and we do have standby. So just when you give me the word, I'm sending it.
9231	10	2024-10-10 00:00:34	2024-10-10 00:00:44	144	7700	Hey Carlos, do you have someone coming with a bus to switch? I'm afraid this glass is going to shatter out.
8505	9	2024-10-09 22:32:35	2024-10-09 22:32:50	145	7690	5760. 5760. Yeah, go. What's your message? 5760. Yeah, 5760. What's your message?
9433	1	2024-10-10 00:28:31	2024-10-10 00:28:32	144	7700	Alright, thank you.
9432	7	2024-10-10 00:28:14	2024-10-10 00:28:23	144	7700	All right, everyone. Green Street in Cameron.
8806	21	2024-10-09 23:12:12	2024-10-09 23:12:35	145	7690	4084. Go ahead, 4084. Passenger that's trying to get to Berkeley Road. I'm on a 43. She said it's going towards the hospital. It's a townhouse. It's a house.
8565	22	2024-10-09 22:40:54	2024-10-09 22:41:23	144	7700	Mobile 3, Super Bowl St. John. Go ahead, Mobile 3. River Road East, going towards Frenchie Pikes, is wide open. River Road West, one lane is open right now. Pretty soon it's going to be wide open. I'll let you know.
9502	3	2024-10-10 00:35:34	2024-10-10 00:35:39	144	7700	Turn off the mic. Yeah, I'll be nice to hear them all.
9352	15	2024-10-10 00:17:56	2024-10-10 00:18:10	144	7700	Number six to Central. He's going to take us 4142. He's going to deadhead to Rock Hill and his meal break is getting ready to start. So this is pick up after his meal break.
9249	30	2024-10-10 00:04:07	2024-10-10 00:04:37	144	7700	Good evening, Central. It is 5356. When I was in Silver Spring Station waiting for 17, I had two passengers. The Metro Police, two of them came in and took one of the passengers from inside. And the police asked me the registration. And I asked them what...
8840	23	2024-10-09 23:14:02	2024-10-09 23:14:31	149	7695	I'm sorry, can you repeat that? The passenger that sprayed my face last week, he sprayed something on my face. I wasn't sure what was it. And he's on my bus again today. So I don't know what he's going to do today. All right, 10-4. Let me see if we have a coordinator in the area. I see you're about to pull out the 54. Is that correct? 10-4. All right, stand by one second.
7481	26	2024-10-09 20:53:55	2024-10-09 20:54:30	144	7700	Let's see what we can do. Yeah, we'll take a look at it. You said 4027 is the current bus? It's affirmative. 4027, and it's blocked. It's run is 347. All right, 10-4, yeah, we'll take a look at it as a run. Okay, 10-4, copy it. He also put in the shop. I'm willing to take the bus to finish shop name, but he had the problem with what he was doing with the bus in the back on the VCR. Copy. All right, 10-4.
8877	12	2024-10-09 23:16:52	2024-10-09 23:17:08	144	7700	What was that? She already left Lake Forest. She's on Perry Parkway right now over by Burlington Covacry. So she's saying when we take the bus down or something, is the guy on the bus?
7400	18	2024-10-09 20:47:50	2024-10-09 20:48:13	144	7700	All right, 10-4, we left him on now. He'll have to come out wide and make the turn in order to make it. The flash bus is not going to be able to make it, but the regular 40-foot bus is low. All right, 10-4, I'm allowed to instruct him to make a left-hand turn and to make a right-hand turn behind the old Discovery Building.
10468	3	2024-10-10 03:44:25	2024-10-10 03:44:30	151	7720	ERROR: TRANSCRIPTION_TIMEOUT
7309	11	2024-10-09 20:40:55	2024-10-09 20:41:10	149	7695	364, I see you leaving the garage late. I know because of the bus issues. Can you try to get over to Bethesda and start your 34 Bethesda? 34, thank you. You're welcome.
7090	67	2024-10-09 20:18:08	2024-10-09 20:19:18	144	7700	Go ahead. Yes, sir. I see that 5763 made it to Clarksburg. How does that seem to you? See, it's stopped a couple times, but it seems like it's running. But I don't know how many more routes he has because I think it was because the 79 route is a lot of touching, go, stopping, and you know what I'm saying, little neighborhoods. So your call, we could use the bus switch, but I don't know if he feels comfortable about driving it. All right, so right now, so he just did his first 79. So he's got a lot of ways to go. He is supposed to deadhead to Shady Grove and pull out a 74. Town Transit, and I'm going to have a bus switch meeting there.
7196	37	2024-10-09 20:27:28	2024-10-09 20:28:11	144	7700	Yes, ma'am. Go ahead, Tanner. 4089 is going to be our switch at Germantown Transit. Copy that. He got ahead of me. So I'm on 270. So hopefully he'll be there or I'll catch him on 270 if he took 270. But you say 4081? 4089. I'm going to try and text it to him as well. Thank you. I'll text it to him as well. Hopefully he'll get it. Yes, I'll get your landline in a minute.
7163	21	2024-10-09 20:23:48	2024-10-09 20:24:15	145	7690	57 to Central. Go ahead. What's your message? Do you want me to go ahead with the back door? Just for the back door. I can run with the back door. Okay, go ahead. Run with the back door. When you get to Shady Grove, I'm going to see if I get to switch there. Thank you.
8613	25	2024-10-09 22:47:15	2024-10-09 22:47:44	144	7700	So we have 5243 back at base. I told her to fill out an incident report to protect herself. And she's going to see the front. She's supposed to pull out a 26 at 650. So that one maybe misses another 26 coming 10 minutes after that. So maybe she can be a standby or something. I told her to see the desk.
8581	8	2024-10-09 22:43:44	2024-10-09 22:43:54	144	7700	Clear in both directions, River Road and Burnett. Quick, they removed the vehicles. It's wide open now.
8578	9	2024-10-09 22:43:22	2024-10-09 22:43:36	144	7700	River Road and Bird is clear. Both directions is clear.
8551	14	2024-10-09 22:38:49	2024-10-09 22:39:06	149	7695	Alright, 10-4, yeah, unless you hear it back from us, go ahead and bring that bus back to the garage once you get to Rockville. If we're able to find a bus that's going out of service and switch with you, we'll give you a call back. Alright, 10-4, thanks. 10-4, you're welcome.
8305	18	2024-10-09 22:08:48	2024-10-09 22:09:12	149	7695	Central, 5-747. 747. 747, go ahead with your message. Oh, yeah. Central, yeah. I'm having a problem with this bike rack. I think it's loose. It won't go back. I don't know if it's broken, but it keeps coming down. Central?
8535	6	2024-10-09 22:37:16	2024-10-09 22:37:22	149	7695	Central 5747. And 5747.
8548	36	2024-10-09 22:38:05	2024-10-09 22:38:46	149	7695	Okay, I heard you got cut off. Are you talking about at about 7.39 when you get done with this 56? Well, as far as the bus going to be in Rockville. So are you going to do this 56 in Rockville, then you're going to bring the bus back, or do you want to bring it back now? No, I can do this 56. You know, I can get it into Rockville, and then I just want to know if I can take the bus back to the people, unless you're all going to have a switch out.
7012	4	2024-10-09 20:12:01	2024-10-09 20:12:08	149	7695	I'm going to log you out so we can log into the other operator.
6735	6	2024-10-09 19:48:40	2024-10-09 19:48:51	144	7700	Psalm 3 was to me. Confie.
6415	3	2024-10-09 19:18:32	2024-10-09 19:18:35	144	7700	Half up, exit eleven.
6311	14	2024-10-09 19:09:54	2024-10-09 19:10:10	144	7700	5885 Central. Yes, good afternoon. 5085. Could you please give your desk a call? Yes, ma'am. I did already 10-4. That is a 10-4. Thank you, sir.
6891	18	2024-10-09 20:02:27	2024-10-09 20:02:49	145	7690	767, go ahead. I have an issue with a front door. The front door, it won't close once it's open. It won't close. I don't know why. I'm using a back door. Is there any glass switch for me in Montgomery Village?
10632	5	2024-10-10 04:10:39	2024-10-10 04:10:47	144	7700	Okay. Mobile 2, give me a line, please.
6969	30	2024-10-09 20:07:38	2024-10-09 20:08:16	145	7690	So you're stuck in traffic? There is a jam of traffic before the bridge, you know, at MacArthur Bridge. Okay, 10-4. If you caught up too late, give me a call when you get to your destination, and if we have to catch you, I will go from there. Yeah, when you get to your final destination, give me a call, and if we have to get you back on track, we'll go from there.
10628	2	2024-10-10 04:10:29	2024-10-10 04:10:31	144	7700	Thank you.
10648	12	2024-10-10 04:12:52	2024-10-10 04:13:04	144	7700	All right, 10-4. Yeah, 402-Suite will probably get there by the same time you guys get there. I'll call the cell phone 5081. The operator will not be able to log in because it's past midnight, so I'll take care of it from up here.
6837	12	2024-10-09 19:58:24	2024-10-09 19:58:42	149	7695	Central 6003. Go ahead. Yeah, we need you to switch with 6007 when you get back to Briggs Chaney. Please bring 6007 back to the garage. 10-4.
17029	2	2024-10-10 18:55:28	2024-10-10 18:55:30	151	7720	4141.
10884	4	2024-10-10 04:57:18	2024-10-10 04:57:22	144	7700	Paul, are you going to attend 7 now? Do you leave at 1 o'clock?
10886	7	2024-10-10 04:57:29	2024-10-10 04:57:38	144	7700	All right, 10-4. I'm going to go ahead and bring you down for 10-7. Have a good evening. Thanks for you all today. All right. What's your reading, 10-7?
10882	2	2024-10-10 04:57:09	2024-10-10 04:57:11	144	7700	Central, mobile 7.
12178	2	2024-10-10 11:06:22	2024-10-10 11:06:25	144	7700	No more time, man.
16426	8	2024-10-10 17:57:56	2024-10-10 17:58:04	144	7700	Max is supposed to be doing recreation of Gatysburg.
13827	14	2024-10-10 14:09:46	2024-10-10 14:10:07	149	7695	A bus in the car? It's a Metro bus. So just tell the 55 and the 59 to go up and make a left turn on Redland Road and come into the station that way. All right. Copy, Temple. Thank you, Central. God bless.
13399	5	2024-10-10 13:32:34	2024-10-10 13:32:39	144	7700	Mobile 1... I'm sorry, Mobile 2. Could you give Mr. Arias a landline?
13464	19	2024-10-10 13:37:56	2024-10-10 13:38:20	149	7695	This technician doing a radio check on 4030 in Gaithersburg Depot. Can you hear me? Call it loud and clear, technician. Thank you, sir. That's all I needed to hear. Over and out. Telephone, roger that.
13401	2	2024-10-10 13:32:42	2024-10-10 13:32:44	144	7700	How cool.
14072	3	2024-10-10 14:33:26	2024-10-10 14:33:28	149	7695	six zero one two
13821	3	2024-10-10 14:09:11	2024-10-10 14:09:14	144	7700	ERROR: TRANSCRIPTION_TIMEOUT
13878	13	2024-10-10 14:14:07	2024-10-10 14:14:20	144	7700	Shady Grove Westside, Metro bus and a car. All right, 10-4. Okay, so the buses come in. They're going to have to come in through the Redland Roadway.
11170	3	2024-10-10 06:08:11	2024-10-10 06:08:13	144	7700	ERROR: TRANSCRIPTION_TIMEOUT
17047	10	2024-10-10 18:56:47	2024-10-10 18:56:59	145	7690	Sent you, though. Hey, Moore, do me a favor and give Eric a call at the desk. Give your desk a landline. 10-4? All right. Thank you.
11028	12	2024-10-10 05:32:07	2024-10-10 05:32:23	144	7700	Yes, sir. Go ahead. It's on 132. You can go ahead and send Tim for a remainder. Thanks for your help tonight and have a safe trip home. Okay, man. You trying to push me out real quick? All right. I'll go for that.
11169	2	2024-10-10 06:08:00	2024-10-10 06:08:02	144	7700	He said that he was three and me.
11171	4	2024-10-10 06:08:16	2024-10-10 06:08:24	144	7700	I didn't hear anything from your radio. Yes, sir.
11172	13	2024-10-10 06:08:24	2024-10-10 06:08:39	144	7700	Okay, now I heard it. 4151 is the last Silver Spring bus back. And it just pulled into the garage. You can go ahead and 10-7 for the remainder. And thanks for seeing me. Thank you. Hope safe.
11025	2	2024-10-10 05:31:59	2024-10-10 05:32:01	144	7700	Central Accordion, more of a weight.
11031	10	2024-10-10 05:32:26	2024-10-10 05:32:41	144	7700	Sorry about that, but I'm sorry you're clear at 1.30. I'm just funny with you, man. You know how game's safe when I'll see you next time. All right. That's fine.
11133	10	2024-10-10 06:00:21	2024-10-10 06:00:34	144	7700	Mobile 3, all the buses are out of your area, so you can go at 10-7 for the remainder. Thanks for your help this evening. 10-4, good night. It's just a pleasure to work with you.
11210	2	2024-10-10 06:16:18	2024-10-10 06:16:20	144	7700	Central Mobile 6, Debbie.
11212	8	2024-10-10 06:16:27	2024-10-10 06:16:38	144	7700	Your last bus 4053 just called in. Signal 10-7 for the remainder. Thanks for your help this evening. 10-4. Have a good night.
13394	16	2024-10-10 13:31:59	2024-10-10 13:32:18	149	7695	No, he did not. That bus is broke down.
11131	3	2024-10-10 06:00:03	2024-10-10 06:00:06	144	7700	Central level three, Mr. Z.
11132	2	2024-10-10 06:00:15	2024-10-10 06:00:19	144	7700	Mobile frigo.
11134	1	2024-10-10 06:00:35	2024-10-10 06:00:36	144	7700	10-4-6
17057	5	2024-10-10 18:57:38	2024-10-10 18:57:45	144	7700	What's the bus number before? The bus number is 5330.
11211	1	2024-10-10 06:16:23	2024-10-10 06:16:24	144	7700	I'm six.
11454	13	2024-10-10 07:37:07	2024-10-10 07:37:20	144	7700	What's going on, Eric? What are you covering for? Good morning, Kevin. Coming for Jose. I'm 10-8, vehicle 1806, and using my personal cell.
11460	37	2024-10-10 07:37:49	2024-10-10 07:38:32	144	7700	Can I copy that? Jose called out. He said he put the lead stuff in, showed me the email. It was a discrepancy between sending to Aries or Yama, but then a lady sent to Yama to make sure they both had a copy. He showed it to me. Yama told me, come on in. All right, no problem. I'm just trying to figure out because I don't have it written out. It's okay. Eric. Stand by for it, sir. Turn forward.
11453	3	2024-10-10 07:37:00	2024-10-10 07:37:03	144	7700	According to Walker Central.
11476	9	2024-10-10 07:48:11	2024-10-10 07:48:20	144	7700	Hi, Mr. Telemark. Good morning. Take Zone 6, please. Stand for Zone 6.
11461	5	2024-10-10 07:39:19	2024-10-10 07:39:26	144	7700	All right, Eric, take zone two. All right, tempo is zone two.
11475	13	2024-10-10 07:47:49	2024-10-10 07:48:06	144	7700	Good morning. Sounds like a cell mask. I'm 10H with vehicle 2651 and I'm using my cell.
11499	4	2024-10-10 08:04:32	2024-10-10 08:04:37	144	7700	Happy New Year.
11458	5	2024-10-10 07:37:38	2024-10-10 07:37:45	144	7700	Copyright members, Kevin and Carmen for Jose Rivera.
13460	3	2024-10-10 13:37:54	2024-10-10 13:38:00	144	7700	40 30 40 30
11474	4	2024-10-10 07:47:38	2024-10-10 07:47:42	144	7700	Good morning Central. This is Pellema.
11523	2	2024-10-10 08:16:00	2024-10-10 08:16:03	144	7700	Caprice to Central.
11548	4	2024-10-10 08:26:16	2024-10-10 08:26:20	144	7700	ERROR: TRANSCRIPTION_TIMEOUT
13880	8	2024-10-10 14:14:33	2024-10-10 14:14:43	144	7700	No one. He said 15 goes out of the 10 level. Yeah, I got it right here. 10-5. 10-4.
13914	2	2024-10-10 14:18:46	2024-10-10 14:18:48	144	7700	I'm a wall of two.
11497	14	2024-10-10 08:03:51	2024-10-10 08:04:13	144	7700	Point Central. Good morning, Mr. Brian. How you doing? Good morning, sir. Doing well. Hope you're doing the same. Have vehicle 7143. Personal cell. 10-8.
13867	1	2024-10-10 14:13:26	2024-10-10 14:13:28	144	7700	I will see.
13900	18	2024-10-10 14:16:39	2024-10-10 14:17:04	144	7700	Mobile 5. Hey, uh, there's been, uh, his, uh, taking a class online, uh, on Zoom. So, if you have his cell phone, maybe you can call him on... Mobile 5. Mobile 5. You in Glenmart right now? I'm at Wheaton Library. I can answer Glenmart.
21386	3	2024-10-11 02:40:03	2024-10-11 02:40:06	151	7720	ERROR: TRANSCRIPTION_TIMEOUT
11498	6	2024-10-10 08:04:23	2024-10-10 08:04:31	144	7700	This morning, Mr. Bright, uh, check zone three, please.
13863	6	2024-10-10 14:12:58	2024-10-10 14:13:06	145	7690	10-4, sir. Thank you. Copy. Thank you so much. Be safe. Thank you, sir.
11524	9	2024-10-10 08:16:09	2024-10-10 08:16:18	144	7700	Good morning. Good morning, Caprice. How you doing? Good morning. 10-8, vehicle 1830, personal sale.
13861	25	2024-10-10 14:12:27	2024-10-10 14:12:56	145	7690	That's 2027. Good morning, sir. Go ahead with your message. Just calling back to confirm that the 55 and 59 going to Rockville Station, they won't be able to make the left of going through the station on the west side. They're going to have to go up and make a left at Redland Road, go through the station, and come back out the same way to get back on track. It was a metro bus involved with a car accident right there on the corner to turn into the station.
11527	6	2024-10-10 08:16:27	2024-10-10 08:16:35	144	7700	Take zone 7. Zone 7, please. Laney 7, thank you.
16992	15	2024-10-10 18:51:28	2024-10-10 18:51:51	144	7700	93. 93. I need you to check the, uh, Route 43 to Shady Grove. It was supposed to be a Gator Corps at 244. Find out if it arrived or not and what time. 10-4. Give me a moment.
11696	5	2024-10-10 09:13:42	2024-10-10 09:13:46	145	7690	5355, good morning. 5355, come in, please.
11731	3	2024-10-10 09:26:42	2024-10-10 09:26:45	144	7700	Good morning, Mr. Bella Flynn. Give us a second, okay?
11839	5	2024-10-10 09:58:36	2024-10-10 09:58:40	145	7690	Good morning. No, sir. I'm answering to your call.
11605	11	2024-10-10 08:49:05	2024-10-10 08:49:22	144	7700	Mobile 7. Go ahead. Clopper Mancini. Roadwork. Can you check it out for us, sweetie? 10-4.
11628	1	2024-10-10 08:59:46	2024-10-10 08:59:47	144	7700	No problem.
11779	3	2024-10-10 09:44:25	2024-10-10 09:44:29	144	7700	And she gonna do a cell switch. 10-4.
11831	2	2024-10-10 09:58:09	2024-10-10 09:58:11	145	7690	Thank you.
11684	8	2024-10-10 09:11:04	2024-10-10 09:11:13	144	7700	I'm over to Pine Branch and what? Hey Eric, good morning. It's Pine Branch between Carroll and University.
11704	8	2024-10-10 09:16:40	2024-10-10 09:16:48	144	7700	Hey, mobile too. It looks like he's got the bus moving again. I'm showing him on Piney Branch Pass Carroll Avenue.
11743	21	2024-10-10 09:30:35	2024-10-10 09:30:58	144	7700	They still had Georgia and Thayer locked off. All buses would still have to make a right if they would take that turn. I mean, if they take that route. Therefore, I don't know if you all still want to make the buses detour or not.
11687	2	2024-10-10 09:11:34	2024-10-10 09:11:37	144	7700	Thank you.
11729	2	2024-10-10 09:26:22	2024-10-10 09:26:27	144	7700	That was in the central.
11776	3	2024-10-10 09:44:17	2024-10-10 09:44:20	144	7700	Copy.
11637	1	2024-10-10 09:02:27	2024-10-10 09:02:28	144	7700	And where's the central?
11698	30	2024-10-10 09:13:53	2024-10-10 09:14:35	145	7690	Central to bus 5355. 5355. If you can hear me, go back and see the dispatch. Go back and see the dispatch. Good morning, Central. This is 5355. How can I help you? Good morning, sir. The regular operator is going to pick up on that run. Can you please go back to the yard? Please go back to the yard. Okay, no problem. I will return back to the yard. Thank you so much. Good for, sir. Be safe.
11634	4	2024-10-10 09:00:44	2024-10-10 09:00:52	144	7700	Zone one. Zone one.
11727	10	2024-10-10 09:25:54	2024-10-10 09:26:07	145	7690	4131, Central. Good morning, 4131. How can I help you? 4131 on a radio check.
11755	19	2024-10-10 09:36:14	2024-10-10 09:36:39	144	7700	I didn't hear you. That's why I didn't hear you, Mr. Spinn. Hello, how are you? Yeah, you told me to hold on like 30 minutes ago. Okay, I still didn't hear you, but go ahead with your information. 8197, personal cell.
11759	9	2024-10-10 09:39:06	2024-10-10 09:39:20	144	7700	Sobriety, Jacinto. Sobriety, what's up, buddy? Hey, not much. 10-8-83-0-9.
11768	29	2024-10-10 09:42:32	2024-10-10 09:43:10	144	7700	All right, I got 4076 up here at Germantown Transit with a low cooler, MIL. She about to pull out a 100. I told her, go ahead, pull out the 100 and see if we can get her bus switch at the 76th Bay, Shady Grove East. Negative. No standbys. You have to shop that bus when she get back down to Shady Grove. Copy. What's the run number?
11800	2	2024-10-10 09:49:29	2024-10-10 09:49:34	144	7700	ERROR: TRANSCRIPTION_TIMEOUT
11670	2	2024-10-10 09:09:37	2024-10-10 09:09:39	144	7700	5-7-5-9, huh guys?
11753	4	2024-10-10 09:36:06	2024-10-10 09:36:10	144	7700	Hello, Abigail.
11757	8	2024-10-10 09:37:11	2024-10-10 09:37:21	144	7700	Alright. Zone 2.2. Copy.
11771	1	2024-10-10 09:43:21	2024-10-10 09:43:22	144	7700	Stand back.
11836	2	2024-10-10 09:58:26	2024-10-10 09:58:29	145	7690	That's it.
11837	4	2024-10-10 09:58:30	2024-10-10 09:58:34	145	7690	Good morning. Hello. Did you have any message?
11668	23	2024-10-10 09:09:05	2024-10-10 09:09:32	144	7700	Well, go ahead.
11676	3	2024-10-10 09:10:46	2024-10-10 09:10:49	144	7700	I'm over too. Can you go to Pony Branch?
11686	9	2024-10-10 09:11:21	2024-10-10 09:11:31	144	7700	Now it's between New Hampshire and Carroll. New Hampshire right up the hill. He's doing a 20 to Silver Spring.
11728	4	2024-10-10 09:26:10	2024-10-10 09:26:14	145	7690	Ready to take us loud and clear. Mr. Yara, have a safe, wonderful day.
11819	16	2024-10-10 09:55:51	2024-10-10 09:56:13	149	7695	Good fella, what's going on? Hey, my man, 50 grand. I hit the button blast and tried to dim my screen over here. Copy that, good fella. Have a go. Likewise, I'm sure.
11631	23	2024-10-10 08:59:52	2024-10-10 09:00:20	144	7700	Go ahead, Mobile Summit. Good morning. Good morning. Yeah, they're doing road work at Clopper and Martini. They should be done in a half an hour. This is what I can get through. They just need to prepare for like that because it's on one lane. Okay, careful. Thank you.
11639	3	2024-10-10 09:02:33	2024-10-10 09:02:36	144	7700	Alright, what's going on? What's going on?
11663	2	2024-10-10 09:08:57	2024-10-10 09:08:59	144	7700	Um, whoa, whoa, whoa, whoa.
11671	4	2024-10-10 09:10:01	2024-10-10 09:10:06	149	7695	Good morning, Central. 4105 Radio Channel.
11745	1	2024-10-10 09:31:06	2024-10-10 09:31:07	144	7700	Copy, devil.
11760	4	2024-10-10 09:39:33	2024-10-10 09:39:39	144	7700	Hey, it's Brian. Take zone 4. Zone 4, 4.
11633	13	2024-10-10 09:00:23	2024-10-10 09:00:39	144	7700	Baker, the central. Mr. Baker, how you doing? It's out of the morning. Call 1515, cell 10-8. Let me know what's going on you up here.
11641	5	2024-10-10 09:02:38	2024-10-10 09:02:43	144	7700	Morning. 10-8-12-20. Personal sales.
11643	4	2024-10-10 09:02:47	2024-10-10 09:02:52	144	7700	All right, thanks. I don't hate this one. Copy that.
11673	13	2024-10-10 09:10:09	2024-10-10 09:10:26	149	7695	10-4, loud and clear on the radio check this morning. How you doing, Kevin? I'm good, sir. Have a good one, okay? 10-4, thank you.
11705	6	2024-10-10 09:16:53	2024-10-10 09:16:59	144	7700	All right, I'll copy you guys. I should be doing like one day, I guess, following.
11730	7	2024-10-10 09:26:16	2024-10-10 09:26:27	145	7690	You know the same. Copy that. 10-4. 10-4, sir, be safe.
11714	7	2024-10-10 09:20:07	2024-10-10 09:20:14	144	7700	Okay, mobile two, I copy that and I'm behind them. Five, seven, five, nine, I follow them three, three, four. Copy that, thank you.
11766	42	2024-10-10 09:41:31	2024-10-10 09:42:22	144	7700	All right, I'm over 2 to Central. Go ahead, 2. 57, 59, made it back to the depot, all right. He's shopping the bus now. I'm going to go down to the yard, talk to Lewis, see what bus we're going to give him. Sounds good, buddy. Thank you. Appreciate it. So I'm thinking also he's doing run 12. I'm thinking we can catch this run. I think it said at Hillendale at 610, I believe, right? Supposed to be leaving Silver Spring. 5, 30, uh, yeah, 610 at Hillendale. Yeah, that's fine. All right, 10-4. I'll wait to Central.
11774	2	2024-10-10 09:44:11	2024-10-10 09:44:12	144	7700	Hi, guys. 276.
11796	18	2024-10-10 09:48:14	2024-10-10 09:48:38	144	7700	He's got bus 4155, and he's going to start where we both, like I told him earlier, and we agree with it. 10-4.
11860	16	2024-10-10 10:00:30	2024-10-10 10:00:48	144	7700	Yeah, he's Stan Lee and he's logged on. Okay, I wasn't sure. So I just wanted to get past the information to you all. Yeah, everything is looking good on the system. Copy.
11892	3	2024-10-10 10:08:38	2024-10-10 10:08:41	144	7700	I'm about to come that way now, Ken.
11834	4	2024-10-10 09:58:15	2024-10-10 09:58:19	145	7690	Good morning Mr. Figueroa. Can you please repeat your message?
11841	10	2024-10-10 09:58:57	2024-10-10 09:59:13	145	7690	Good morning. No, sir. I did not send you any messages. I'm answering to your call. I didn't call and I didn't send the message. Thank you.
11849	2	2024-10-10 09:59:59	2024-10-10 10:00:01	144	7700	Mobile One of Central.
11893	64	2024-10-10 10:07:29	2024-10-10 10:08:43	149	7695	4018. Good morning. Good morning. 4018. Just calling to let you know that the Fairbox door is open on this bus. I tried closing it a few times and it's coming back open. It looks like the previous operator might have put some tape on it. So I'm going to get some tape and put it around that. So just letting you know. All right, Sean. What you can do is slam it hard. And hold your foot up against it or your hand up against it and it should lock itself. Try that. I already did. Tried it about four times. It's not working. All right. I'll have somebody, maybe one of my coordinators meet up with you and see if they got some tape to secure that for you, okay? 10-4. I'm right now. I'm at Hillendale. There's an Exxon game. We're going to see if they got some tape in there. Okay. Copy that. Let me know. Temple. Temple.
11897	13	2024-10-10 10:09:32	2024-10-10 10:09:54	144	7700	Well, I am too, so, well, you're going to stop. I keep going to my zone. Alright, 2-4. Oh, Mr. Rodriguez, glad you've been joining us this morning.
11950	2	2024-10-10 10:23:47	2024-10-10 10:23:48	149	7695	4078.
11951	3	2024-10-10 10:24:15	2024-10-10 10:24:18	145	7690	Turn to the bus 4029.
12087	2	2024-10-10 10:55:13	2024-10-10 10:55:15	149	7695	40-29.
11840	4	2024-10-10 09:58:50	2024-10-10 09:58:54	145	7690	Yes, good morning. Do you send me the message?
11896	6	2024-10-10 10:09:16	2024-10-10 10:09:24	144	7700	I thought he was. Actually, I'm just getting on four ninety-five to go to Hill and Hill.
11938	17	2024-10-10 10:20:21	2024-10-10 10:20:44	144	7700	I'm over two to central. Yeah, go ahead, two. Yeah, that was a .4018 shirt. He bought great tape out of the gas station, and he put it on himself, so he's good now. Ten-four. All right, copy. Okay, sounds good.
11944	3	2024-10-10 10:22:20	2024-10-10 10:22:24	149	7695	40-29. 40-29.
12094	4	2024-10-10 10:55:30	2024-10-10 10:55:36	149	7695	Four zero two nine. Four zero two nine.
11898	10	2024-10-10 10:09:57	2024-10-10 10:10:08	144	7700	Morning, Kevin. I'm 10-8. Vehicle 1181. Personal 5114.
11903	9	2024-10-10 10:10:51	2024-10-10 10:11:01	144	7700	Okay, on the road. Yeah, he doesn't leave until 620 on the route 27. 620.
11958	17	2024-10-10 10:25:34	2024-10-10 10:25:55	145	7690	Good morning, Central, 5060, radio check. Good morning, 5060, your radio check is loud and clear. Have a safe, wonderful day, and please do not forget to do that post-trip at the end of your workday. Sure, thank you so much. Have a nice day, Central.
11891	3	2024-10-10 10:08:31	2024-10-10 10:08:35	144	7700	ERROR: TRANSCRIPTION_TIMEOUT
11902	10	2024-10-10 10:10:33	2024-10-10 10:10:48	144	7700	Over two or something. Yeah, two. That was 4018, right? In Hilliard Hill? Year 4018.
11953	4	2024-10-10 10:25:03	2024-10-10 10:25:06	149	7695	755, boss 755.
11962	13	2024-10-10 10:27:46	2024-10-10 10:28:02	144	7700	Mobile 7 4070 crash 355 in front of Gatorsburg High School.
12102	7	2024-10-10 10:56:59	2024-10-10 10:57:07	144	7700	Yeah, we already talked to Arthur. Tell Shelton he need to call the desk.
11850	9	2024-10-10 10:00:04	2024-10-10 10:00:14	144	7700	Number one, go ahead. Just to get your heads up, unit number 5332, his block will be 1042.
11905	13	2024-10-10 10:10:58	2024-10-10 10:11:11	145	7690	2035. Good morning. 2035. This is Black 2076. I just did a bus switch, and I need to be logged onto this bus, please.
11907	12	2024-10-10 10:11:14	2024-10-10 10:11:27	145	7690	Good morning. I can help you with that if you let me have your run and your ID number please. My ID number is 3201. My run number is 276.
11942	1	2024-10-10 10:22:15	2024-10-10 10:22:16	149	7695	And 4029.
12024	11	2024-10-10 10:41:34	2024-10-10 10:41:49	145	7690	Good morning, 4039. Your radio check is loud and clear. Have a safe, wonderful day. Thank you. Will do. You have a great day, too.
11890	3	2024-10-10 10:07:36	2024-10-10 10:07:39	144	7700	ERROR: TRANSCRIPTION_TIMEOUT
11895	17	2024-10-10 10:08:52	2024-10-10 10:09:11	144	7700	Yeah, I got some grey tape. Do you have the grey tape? Okay. I might have some in my bag. I think I got some black tape. You might get it off the gas station. You never know. They sell just about everything there.
11901	6	2024-10-10 10:10:11	2024-10-10 10:10:19	144	7700	All right, sir. 605. 605, 10-4.
11948	3	2024-10-10 10:23:38	2024-10-10 10:23:40	149	7695	4878.
11955	11	2024-10-10 10:25:10	2024-10-10 10:25:25	149	7695	755. Hey, good morning, team. Um, what's your run number? 208. All right, copy, careful.
11999	8	2024-10-10 10:35:36	2024-10-10 10:35:47	144	7700	Mobile 7, I'm 10-5. Police is already on the scene. Copy that. 10-4-30.
12095	2	2024-10-10 10:55:49	2024-10-10 10:55:51	144	7700	Oh wait.
13875	16	2024-10-10 14:13:42	2024-10-10 14:14:04	144	7700	Over 6. Over 6, you have a car. Tell him, could you go over there to Shea Grove, Westside, and see what's going on that seems like there was an accident with a Metro bus in a car?
11906	3	2024-10-10 10:11:11	2024-10-10 10:11:13	144	7700	Well, the beltway's a parking lot going west.
12097	19	2024-10-10 10:55:54	2024-10-10 10:56:18	144	7700	Go ahead. Hey, you, uh, if you, uh, Jeep, Germantown Transit, you see bus 47, 48, 29, I'm sorry, 40, 29. You see a 40, 29? Yeah. Uh, hold on, stand by. Might be him walking to me now.
12103	1	2024-10-10 10:57:08	2024-10-10 10:57:09	144	7700	Careful.
12123	11	2024-10-10 10:59:52	2024-10-10 11:00:06	144	7700	Go ahead. Hello, I want that, uh, situation. I'm not right here. I'm about to get a statement from the operator. So he should be there in like two minutes.
12145	4	2024-10-10 11:02:02	2024-10-10 11:02:07	149	7695	Control, train and bus 6751 doing a radio check.
11904	2	2024-10-10 10:11:03	2024-10-10 10:11:05	144	7700	10-4.
11908	7	2024-10-10 10:11:30	2024-10-10 10:11:39	145	7690	Therefore, ma'am, I'll work on logging you on in the meantime. Please follow you around. Have a safe, wonderful day. You too.
12025	2	2024-10-10 10:41:50	2024-10-10 10:41:52	145	7690	Yes, well, therapy safe.
12026	3	2024-10-10 10:41:55	2024-10-10 10:41:58	144	7700	ERROR: TRANSCRIPTION_TIMEOUT
12148	6	2024-10-10 11:02:09	2024-10-10 11:02:16	149	7695	Okay, you loud and clear, careful. Have a wonderful day. You as well.
11945	2	2024-10-10 10:22:35	2024-10-10 10:22:37	149	7695	40-29.
11949	5	2024-10-10 10:23:37	2024-10-10 10:23:43	145	7690	4029. Good morning, 4029. How can I help you?
12022	5	2024-10-10 10:41:26	2024-10-10 10:41:34	145	7690	Good morning Central. This is 4039. Requested a radio check.
12090	2	2024-10-10 10:55:22	2024-10-10 10:55:24	149	7695	four zero two nine
12116	5	2024-10-10 10:59:45	2024-10-10 10:59:50	144	7700	Mobile 7.
13917	11	2024-10-10 14:18:51	2024-10-10 14:19:04	144	7700	I'm all too good. Eric, by any chance do you have one of those old hard drives? Not the newest one, but the other one. Got you.
13919	11	2024-10-10 14:19:06	2024-10-10 14:19:18	144	7700	All right. Do me a favor. Go to the lightning party and pull that hard drive up. That bus takes the old hard drive, not a new one.
13922	17	2024-10-10 14:19:22	2024-10-10 14:19:41	144	7700	All right, 10-4. When are you stuck in 4001 at Langley Park? He's just leaving Silver Spring on 15. It'll be at Tacoma Langley Park by 10-33. 10-4.
12129	37	2024-10-10 11:00:09	2024-10-10 11:00:50	144	7700	All right, so tell him to deadhead to, because he's supposed to pull out a medical center at 14, but we're going to just have him deadhead to pick it up from North Bethesda. North Bethesda? I'm out of Twinbrook Station, dude.
12134	8	2024-10-10 11:01:03	2024-10-10 11:01:13	144	7700	Yeah. So, yeah, just call me back when you finish so I'll give him a shot point. Simple.
12162	43	2024-10-10 11:02:29	2024-10-10 11:03:19	149	7695	5763. Yeah, what's going on, Mike? There it is. It's Al. Al Johnson. I need you. I can't knock on somebody else starting my run. My run is, uh, my block is 2102. Run 302. Careful. 2102. Uh, alright, so you going, uh, 2102. Let me look at it real quick, Al, and, uh, yeah, somebody's on your run. Does, uh, the desk know that you did? That you about to pick it up?
12131	2	2024-10-10 11:00:56	2024-10-10 11:00:57	144	7700	I can never remember.
13896	2	2024-10-10 14:16:25	2024-10-10 14:16:27	144	7700	Troop 1-2 to Mobile 5.
12100	9	2024-10-10 10:56:44	2024-10-10 10:56:56	144	7700	What, wait? Yeah. Yeah, check, because he says Arthur might be doing his run. He on 289.
13903	6	2024-10-10 14:17:07	2024-10-10 14:17:13	144	7700	Okay, well, I've got an accident report I want to bring to you to take up the G-Birds. I'll catch you on the library.
16421	5	2024-10-10 17:57:34	2024-10-10 17:57:39	144	7700	Okay, now we have a tempo.
13968	5	2024-10-10 14:24:48	2024-10-10 14:24:53	144	7700	Mobile 6 to Central.
13972	1	2024-10-10 14:25:04	2024-10-10 14:25:06	144	7700	go ahead six
16434	1	2024-10-10 17:58:33	2024-10-10 17:58:34	144	7700	Good looking out.
14025	20	2024-10-10 14:29:04	2024-10-10 14:29:29	144	7700	2.2. Mobile 2.2. Hey, do me a favor. Mobile 1 is coming out with a hard drive. Since you're on your way to Wheaton, can you, after you drop that off to Rodriguez, can you head and cover Zone 1 for me, please? Copy that.
13989	99	2024-10-10 14:25:09	2024-10-10 14:26:58	144	7700	We're coming from Redland, 355, into Redland, and then Redland is at its station. We can get out up to King's Farm, 355. When we're coming out, we can come out that way, to 355, where King's Farm is. Because they're going southbound, right, the 59 and 55 going to Rockville? Yes, because going to Rockville, no. Yes, yes, yes, yes, that's correct. They have to go to 355 and King's Farm and make a left on 355 to go to Rockville. You mean they have to go down, straight down, and make a left on Redland Road, right? Shady Grove West, when you get in through Redland Road into Shady Grove West, you have to come out, you have to circle around, and then come to that exit that leads to 355 before the next one, which is Redland. You can make a right on the first exit and make a left on 355 to go to Rockville. Thank you.
14009	44	2024-10-10 14:27:02	2024-10-10 14:27:53	144	7700	But we don't have any tight situation. A bus just passed the normal way, 10-4. No, we don't need no detour there this time. Yes, we don't need it because a bus just came in around the accident and went to Rockville West. Just stay there until they clear. Are we not involved, correct? No, it's a metro and a car. All right, copy that.
12182	9	2024-10-10 11:06:32	2024-10-10 11:06:43	144	7700	Mobile server, go ahead. Okay, we're ready here. He might need a bus switch, too, because this check translates like he's on criminal.
12165	23	2024-10-10 11:03:21	2024-10-10 11:03:46	149	7695	You didn't guess, though. Okay, he's still doing the run, though. That's probably why you can't log on. Where you picking it up from? Why? She didn't finish me. He was just doing the 100 and bringing it down. That's all. And I was picking it up at Shady Grove.
12166	22	2024-10-10 11:03:48	2024-10-10 11:04:12	149	7695	Okay, so you're going to pick it up at 7-10 in Shady Grove. All right, as soon as 7-10 comes, I'll contact that operator and let him know that, yeah, to log off and go ahead back to the depot. Depot. He dead now. You don't see him? 40-43?
12167	8	2024-10-10 11:04:15	2024-10-10 11:04:23	149	7695	I thought that was the boss. He's sitting right in front of me. Okay, let me go. Let me go.
12170	2	2024-10-10 11:04:49	2024-10-10 11:04:52	149	7695	043.
12173	19	2024-10-10 11:04:53	2024-10-10 11:05:21	149	7695	4043. You got some sticking? Yeah. The regular operator, he's behind you. He's going to pick up his run. But I need you to give us a landline because I got a run you can pick up real quick. 10-4.
12174	9	2024-10-10 11:05:24	2024-10-10 11:05:35	149	7695	I'm gonna love you all for that run. So the regular operator there to pick up his run. Your central landline.
12202	5	2024-10-10 11:08:38	2024-10-10 11:08:43	149	7695	You copy that 4043? The exit number 4.
12203	13	2024-10-10 11:08:46	2024-10-10 11:09:01	149	7695	No, I logged him off. I need him to give Central a landline. Oh, okay. I'm going to call you for my number. I'm over here doing my duty, so I'll have him call for my phone. All right. All right. Copy, 24.
12288	3	2024-10-10 11:23:40	2024-10-10 11:23:43	144	7700	ERROR: TRANSCRIPTION_TIMEOUT
12419	2	2024-10-10 11:40:40	2024-10-10 11:40:42	144	7700	Okay, copy, simple.
12191	44	2024-10-10 11:06:48	2024-10-10 11:07:33	144	7700	All right, you know what? I got another operator who can pick up his trip. Just have him dead head back to the depot and get another bus. That's the same, boy.
12197	3	2024-10-10 11:08:10	2024-10-10 11:08:13	144	7700	4043 4043
12201	15	2024-10-10 11:08:15	2024-10-10 11:08:32	149	7695	4043. Yes. Yes, 4043. I love you all because the other operator picking up his run. I need you to give me a landline, 10-4.
12418	12	2024-10-10 11:40:25	2024-10-10 11:40:38	144	7700	I mean, I can take it up to five. What's going on? No, I thought you were doing checks. I thought you were doing checks. That's all you were asking earlier. But I got it.
12728	3	2024-10-10 12:29:21	2024-10-10 12:29:25	144	7700	Well, seven. I had.
12683	3	2024-10-10 12:20:02	2024-10-10 12:20:07	145	7690	5839, good morning.
12657	15	2024-10-10 12:16:02	2024-10-10 12:16:22	149	7695	753. I'm just gonna do the radio check. Okay. Loud and clear on that radio check. 10-4. Thank you. Have a good day.
12541	19	2024-10-10 11:58:12	2024-10-10 11:58:34	144	7700	What are you talking about? You say he's going to meet him at Bethesda at 8.15? No, the bus will be clearing a Frenchie height at 8.15, so then he'll have to be here to Bethesda, so give him, like, another 10 minutes after that.
12536	14	2024-10-10 11:57:26	2024-10-10 11:57:48	144	7700	Hey, mobile, three to central. You all right, Anthony? Yeah, I just spoke with the operator on 5340. Yeah, he doesn't have any heat. Looking forward to that bus switch.
12522	25	2024-10-10 11:54:44	2024-10-10 11:55:13	144	7700	Mobile 3. Mr. Bright, can you check 5340 in Bethesda? He said he got no heat. I'm giving him a bus switch. If it doesn't work, he'll be arriving there around 8.01. All right, copy that. 5340 at 8.01.
12833	17	2024-10-10 12:42:15	2024-10-10 12:42:38	144	7700	We're going to leave it in the 100 Bay. Call shop for it. I don't think it's going to make it too far with the stop engine light on. All right, can you move it out of the way? All right, 10-4. Trying not to get stuck in the intersection on a bad spot. That's why I said leave it here.
12828	4	2024-10-10 12:41:52	2024-10-10 12:41:55	144	7700	If you will hire me, what do you think is better?
12752	2	2024-10-10 12:32:18	2024-10-10 12:32:20	144	7700	I'm on a free central.
12788	3	2024-10-10 12:38:21	2024-10-10 12:38:24	144	7700	Careful.
12803	1	2024-10-10 12:40:04	2024-10-10 12:40:05	144	7700	I'm all right.
12517	1	2024-10-10 11:54:38	2024-10-10 11:54:39	144	7700	No more surgery.
12743	4	2024-10-10 12:31:33	2024-10-10 12:31:37	144	7700	Okay, tell them I already call a shot.
12755	1	2024-10-10 12:32:57	2024-10-10 12:32:58	144	7700	Thank you.
12710	4	2024-10-10 12:27:19	2024-10-10 12:27:23	144	7700	A 815 from Bethesda, you say?
12705	3	2024-10-10 12:26:07	2024-10-10 12:26:10	144	7700	Call 3 Central.
12747	6	2024-10-10 12:32:00	2024-10-10 12:32:06	144	7700	Yeah, tell him this was his last trip. Just take him back to the depot.
12732	3	2024-10-10 12:29:36	2024-10-10 12:29:39	144	7700	This has got mobile 6.
12540	3	2024-10-10 11:58:30	2024-10-10 11:58:33	145	7690	5071. Good morning, 5071.
12790	4	2024-10-10 12:38:29	2024-10-10 12:38:33	144	7700	And then we'll call the depot. Maybe I can get him a switch at leg force.
12787	5	2024-10-10 12:38:12	2024-10-10 12:38:17	144	7700	you're now going down to seven you are now uh doing a 55.
12718	17	2024-10-10 12:27:59	2024-10-10 12:28:18	144	7700	Got it. That bus should be at Bethesda Station. You see 85340 there? Yeah, copy that. That bus is waiting for a bus switch. Okay, copy that. Thank you.
12713	10	2024-10-10 12:27:25	2024-10-10 12:27:35	144	7700	815 Route 47 from Bethesda. That should be blocked 1046.
12809	6	2024-10-10 12:40:19	2024-10-10 12:40:26	144	7700	Lazo, I'm sent 5 with 4081. And I'm taking the operator to the computer, 10-4.
12716	2	2024-10-10 12:27:42	2024-10-10 12:27:44	144	7700	Yeah, I got it. Yeah, man.
12968	13	2024-10-10 12:56:08	2024-10-10 12:56:25	149	7695	2028. Good morning, Central 2028. Calling in for a radio chat. Loud and clear. Loud and clear, 10-4. Yes, it's 10-4 Central. Thanks, y'all. Have a good day.
12826	14	2024-10-10 12:41:34	2024-10-10 12:41:48	144	7700	All right, what can we do with this? Either he can then head back or you can take him back to the depot to get another bus and he can pull his 78 out.
12820	2	2024-10-10 12:41:10	2024-10-10 12:41:12	144	7700	If you follow him.
12810	1	2024-10-10 12:40:28	2024-10-10 12:40:29	144	7700	You too, boy.
12785	13	2024-10-10 12:37:53	2024-10-10 12:38:08	144	7700	But wait, check engine, stop engine. And he said the cooler light was coming on periodically. It's off right now. But I don't think he's going to make it down 27.
12745	1	2024-10-10 12:31:39	2024-10-10 12:31:40	144	7700	Thank you.
12753	4	2024-10-10 12:32:24	2024-10-10 12:32:28	144	7700	Hi, Mr. Bray. 53-56 is there, right?
12868	2	2024-10-10 12:45:43	2024-10-10 12:45:47	144	7700	Good morning, Home 5.
12838	1	2024-10-10 12:42:54	2024-10-10 12:42:56	144	7700	I will...
12829	1	2024-10-10 12:42:01	2024-10-10 12:42:03	144	7700	We'll wake up.
12800	1	2024-10-10 12:39:52	2024-10-10 12:39:54	144	7700	We'll wait.
12749	1	2024-10-10 12:32:09	2024-10-10 12:32:10	144	7700	Thank you.
12709	4	2024-10-10 12:26:59	2024-10-10 12:27:02	144	7700	8-15, stand by. Stand by, Mr. Brink.
12902	4	2024-10-10 12:49:14	2024-10-10 12:49:21	144	7700	I'm over five. You can disregard. Thank you, boy.
12794	5	2024-10-10 12:38:44	2024-10-10 12:38:52	144	7700	So you want him to pull this out? Stand by for a second, bird.
12767	19	2024-10-10 12:35:29	2024-10-10 12:35:57	144	7700	Mo, boy. Go ahead. Hey, good morning, my boy. Can you check 4098? It's right there by the 100th base in Germantown Transit. I hope it's not leaking cooling as well. Something mechanical. I don't know. Copy.
12997	10	2024-10-10 13:00:35	2024-10-10 13:00:51	144	7700	Uh, Marlboro 3? Marlboro 3, what's the bus number? Uh, Mr. Bry, uh, 4001, uh, in Bethesda. Here we go.
12998	1	2024-10-10 13:00:55	2024-10-10 13:00:57	144	7700	Thank you.
12843	17	2024-10-10 12:43:08	2024-10-10 12:43:28	144	7700	You made it to the diva. I want to tell you shop is 10-5. We are leaving. We are leaving the station and the shop came 10-4. Alright, 10-4. Thank you.
13120	1	2024-10-10 13:12:00	2024-10-10 13:12:01	144	7700	Mobile one, mobile one.
13028	8	2024-10-10 13:04:43	2024-10-10 13:04:59	144	7700	Over 8. Over 8. Operator back in the garage. Stand by for the bus number. 10-4.
12876	10	2024-10-10 12:46:09	2024-10-10 12:46:20	144	7700	Well, he was supposed to pull out at 5.40. I mean, 8.40, and he's still there. 8.40 was the pull-out time.
13070	6	2024-10-10 13:07:57	2024-10-10 13:08:03	144	7700	Central, Central, this is Vexbox 1005, I'm taking a 10-7.
13055	8	2024-10-10 13:06:18	2024-10-10 13:06:30	144	7700	Okay. All right. We'll manage. Somehow we'll pull it. All right. Copy that. We'll wait.
16430	17	2024-10-10 17:58:09	2024-10-10 17:58:28	144	7700	All right. Thank you. Yeah, so he's supposed to be around there in front of the community center, not in front of McDonald's. So he's probably waiting for the time to pull up. It's a bit early. Yeah, he's coming up.
13050	29	2024-10-10 13:05:40	2024-10-10 13:06:16	144	7700	We're on Street Central. Go ahead, Mala 3. So the operator on 41 has been stopped sharply, and two people are claiming injury. They do not want to be transported, so I'm just going to take their information and have the operator fill on this to report when it's cleared. All right, and also pull me the hard drive, please. I still don't have a spare hard drive.
13537	5	2024-10-10 13:46:54	2024-10-10 13:47:01	145	7690	Good morning, 2025. Turn to bus 2025. Mr. Reed.
13124	8	2024-10-10 13:12:07	2024-10-10 13:12:20	144	7700	Go, go, go, go, go, go.
13161	8	2024-10-10 13:15:58	2024-10-10 13:16:11	144	7700	Mobile 2. Cop Mobile 2, boy. Aaron, give me a landline. 10-4.
13175	2	2024-10-10 13:17:11	2024-10-10 13:17:13	144	7700	World War II.
13539	7	2024-10-10 13:47:03	2024-10-10 13:47:13	145	7690	What's going on, Lenore? Good morning, sir. Will you be kind to pick up on run 732?
13057	9	2024-10-10 13:06:33	2024-10-10 13:06:44	144	7700	One way, go. 4031 is the new bus, and he's going to pull out from Shady Grove Lake. Copy? Careful.
13545	9	2024-10-10 13:47:27	2024-10-10 13:47:39	145	7690	It would be at 1050 with a 29 route at Friendship Heights.
13171	2	2024-10-10 13:15:51	2024-10-10 13:15:52	144	7700	Wow, what's up?
13177	3	2024-10-10 13:17:19	2024-10-10 13:17:22	144	7700	Yeah, the phone's ringing.
13542	6	2024-10-10 13:47:15	2024-10-10 13:47:25	145	7690	Since I'm out of base, I might have to look at it. Hold on a second. Yeah, I'm out of base anyway. I could just ask though right now.
13563	1	2024-10-10 13:49:19	2024-10-10 13:49:21	144	7700	I'll wait.
13623	80	2024-10-10 13:53:56	2024-10-10 13:55:27	145	7690	Thank you for getting back. Hey, I've never used the GPS on the bus, and before I left earlier this morning, I've never really done the midday 90, you know, early afternoon midday 90 from Damascus. Can I just press the GPS when I'm starting the 90 going north so that I'm not going to mess up coming back south? I said I didn't pick up the left-right sheet this morning. I didn't realize that I would need it. 10-4, sir. Be safe. Okay. Yeah, is this Tina? No, sir. Leonora. I'm sorry. You always sound so much like Tina, and that's a compliment. I'm not being detrimental. I can figure it out. I think the part that I'm confused about is where you go kind of near Clarksburg where Harris-Peter and whatnot is. So when I get to it, after I do the 43, I'll give you all a call, so I'm not going to – usually there might be a passenger that can help, but I don't like to rely on that. 10-4.
13067	35	2024-10-10 13:07:07	2024-10-10 13:07:48	149	7695	4033. Yeah, I see you logged on, Ms. Wells. I got you logged on, so I don't know what's going on on your hand, but on my hand, it got you logged on, okay? Everything will be alright. Copy or correct? Copy that, simple.
13567	4	2024-10-10 13:49:29	2024-10-10 13:49:35	144	7700	40. Top 10-5 with 40-98.
12837	13	2024-10-10 12:42:38	2024-10-10 12:42:54	144	7700	All right. All right. Now, I'm going to go with your judgment. Just leave it alone. We'll call a shot. Ten-four. I'll secure it, and I'll head him back to the depot. I'll let you know it's bus number once we get it.
13201	2	2024-10-10 13:19:10	2024-10-10 13:19:12	144	7700	I'm over one.
12879	8	2024-10-10 12:46:27	2024-10-10 12:46:38	144	7700	10-4. I'll be a minute. I'm in Aspen Hills Hopping Center, so I'm going to start hitting that one. Okay. 10-4.
12806	4	2024-10-10 12:40:11	2024-10-10 12:40:15	144	7700	Yeah, we're looking at the Route 100. Job is not 55.
17031	22	2024-10-10 18:55:46	2024-10-10 18:56:11	151	7720	4141. 4141, go ahead. Yeah, 4141. I just want to verify with you that you did go down and service Gaither Road. 10-4, copy. Thank you very much. All the time. 10-4. That is a 10-4. Thank you, sir. I just need to verify. Thank you.
13216	3	2024-10-10 13:19:38	2024-10-10 13:19:40	144	7700	Mobile 6 to Central.
12686	20	2024-10-10 12:20:36	2024-10-10 12:21:03	145	7690	Good morning, Central 5839. Good morning, 5839. How can I help you? Hello, Tina. I just did a bus switch. I was wondering if you can log me onto this bus. My ID number is 2994. What is your run number, sir? My run number is 209.
12818	6	2024-10-10 12:40:59	2024-10-10 12:41:04	144	7700	All right, Dempuri. Just have him dead head back. Can he dead head back to the depot?
13225	19	2024-10-10 13:19:45	2024-10-10 13:20:09	144	7700	I'm going to second log for a quick fix to program fuel tank to the fuel pump on vehicle 1677.
13229	2	2024-10-10 13:20:17	2024-10-10 13:20:19	144	7700	10-4-1005.
12874	10	2024-10-10 12:45:51	2024-10-10 12:46:03	144	7700	Pull 5. Yes, sir. Bus 5050 at Witton Station. Can you please make sure that he pulls out his 37 route?
12688	6	2024-10-10 12:21:06	2024-10-10 12:21:14	145	7690	Teleforcer, I work on logging you on. In the meantime, please follow your run. Teleforcer, thank you.
13625	7	2024-10-10 13:55:30	2024-10-10 13:55:38	145	7690	10-4, sir. We're here to help you. If you need us, we're here. Thank you very much. Thank you, thank you.
13213	13	2024-10-10 13:19:17	2024-10-10 13:19:33	144	7700	Mobile 1, go ahead. Yeah, Mobile 2 is going to meet you at the depot. He has that hard drive that you were going down there to get. So just wait for him. He'll bring it down there to you. 10-4. Copy.
13228	3	2024-10-10 13:20:11	2024-10-10 13:20:14	144	7700	Flex 1005 back from 10-7.
12754	21	2024-10-10 12:32:30	2024-10-10 12:32:54	144	7700	Hey, there's a bus which will be coming from bus 5340 at Bethesda. Do you have any information on that bus? It's right there. It's turning from old Georgetown. It's turning left into the station. Sorry, copy. Thanks. And that's the next 47, so I have him pull it out late.
12412	63	2024-10-10 11:38:38	2024-10-10 11:39:41	152	7730	Good morning. Happy Thursday to everybody. Today's safety message is scan steering wheels. Always scan steering wheels of parked vehicles to see if a vehicle is occupied. An occupied vehicle presents two hazards. The person may either exit the vehicle or pull away from the curb. Sign wheels, turn, look for tail light to come on, and exhaust coming from the tailpipe. If you cannot determine if the vehicle is occupied, treat it as occupied. Watch the path of least resistance. But today's safety message, scan steering wheels. Revival of the day.
12708	16	2024-10-10 12:26:22	2024-10-10 12:26:43	144	7700	Hey, I've got passengers complaining that the 815-47 from Bethesda hasn't shown up. Do you have any information on that bus?
12734	19	2024-10-10 12:29:42	2024-10-10 12:30:15	144	7700	Mobile 6. Shady Grove East Side. Tell them all. 4081. Mechanical. Leaking. Cooling. Shady Grove East Side. Yes. And the bus is 4081. That's correct. Stand for.
12538	20	2024-10-10 11:57:50	2024-10-10 11:58:10	144	7700	All right, okay. I got somebody that's going to clear down Frenchy Heights by 8.15, so tell him to wait until he gets there then. The bus is 5356. You'll be day heading from Frenchy Heights to Bethesda.
12542	17	2024-10-10 11:58:37	2024-10-10 11:59:00	145	7690	Morning, communications. Training bus 5071. Radio check. Radio check is loud and clear, sir. Have a safe, wonderful day. Please do not forget to do that post trip at the end of your training. Thank you.
13784	3	2024-10-10 14:06:07	2024-10-10 14:06:09	144	7700	I'm on the top. I'm going to go around the bottom there.
13781	3	2024-10-10 14:05:40	2024-10-10 14:05:45	144	7700	Level one, essentially. Level one.
13783	8	2024-10-10 14:05:56	2024-10-10 14:06:04	144	7700	That bus being sitting there is not up on the lower level.
17040	9	2024-10-10 18:56:40	2024-10-10 18:56:49	144	7700	And that's the 10th floor. If you're at Wheaton Station, head up Georgia Avenue, and then make a right-hand turn onto Cola Avenue, and they're right on Amherst. It's right there.
13804	27	2024-10-10 14:06:51	2024-10-10 14:07:23	144	7700	Welcome back. You didn't miss nothing important. None. Good news.
13813	4	2024-10-10 14:08:22	2024-10-10 14:08:28	144	7700	I already called and said shoppers taking it.
13824	19	2024-10-10 14:09:23	2024-10-10 14:09:47	149	7695	Copy, sir. Just 2027. I was calling to let you know. I was calling to let you know there's an accident right there coming in the Shady Grove. So it's 60, 55, 59 coming in going southbound. Can't get into the station to bust a car there.
13782	4	2024-10-10 14:05:48	2024-10-10 14:05:54	144	7700	Can I get a 20 on that unit, 4001?
13791	10	2024-10-10 14:06:31	2024-10-10 14:06:42	144	7700	Yeah, he's down below. Then he'll be doing a 15 after. Like around 10, 15. Okay, I'm going...
12416	20	2024-10-10 11:39:55	2024-10-10 11:40:22	144	7700	All right, mobile 2.2. Yeah. All right. I can help you out with your situation, man. You still need that assistance. I can hear you too far from the mic. Say that again. I can help you out with your situation. You still need some assistance.
14084	16	2024-10-10 14:33:45	2024-10-10 14:34:05	149	7695	I'm calling you. Uh, yeah, Ms. Barnes, you did. You might have hit it by accident. But no worries. We know your radio works now. Thank you. I'm sorry. Careful. No problem. Careful.
14172	11	2024-10-10 14:40:14	2024-10-10 14:40:24	144	7700	Let me check her around. I might just have her meet, uh, Mobile Fool up at, uh, Groverland Station.
16939	29	2024-10-10 18:43:54	2024-10-10 18:44:23	147	7710	Good afternoon, Silver Spring operator. Central is looking for the operator on run 102, run 102. Block number is going to be 1173. Central is looking for that operator. When it is safe to do so, give Central a landline. The operator on run 102, 102, and on block 1173. When it is safe to do so, give Central a landline. Central player, 2.44 p.m.
17061	4	2024-10-10 18:57:53	2024-10-10 18:57:57	145	7690	5027. 5027. How can I help you?
14123	7	2024-10-10 14:36:34	2024-10-10 14:36:44	144	7700	Can you please ring my medical center and check out that incident with 4028? That's another round.
14078	8	2024-10-10 14:33:31	2024-10-10 14:33:43	149	7695	Yeah, go ahead with your message. Yeah, yes, go ahead with your message.
14118	1	2024-10-10 14:36:28	2024-10-10 14:36:29	144	7700	All three.
14131	5	2024-10-10 14:37:03	2024-10-10 14:37:11	144	7700	Copy. Medical Center 4028. Copy.
14143	2	2024-10-10 14:37:57	2024-10-10 14:37:59	144	7700	Roll the floor.
14155	18	2024-10-10 14:38:47	2024-10-10 14:39:09	145	7690	Good morning, Central. Bus number 4092. I'm trying to log in. Good morning, sir. Give me your ID number and your run number. Maybe I can help you with that. ID number is 3381. My run is 334.
14161	7	2024-10-10 14:39:11	2024-10-10 14:39:20	145	7690	Well, of course, sir. I work on logging you on. In the meantime, please follow your run. Have a safe day. You too.
14166	15	2024-10-10 14:39:17	2024-10-10 14:39:35	144	7700	I'm going to go ahead and disregard. No, you go ahead and get the statement. He's going to get the hard drive. I'm coming from, but I mean, I mean, I'm going to be a minute.
14177	20	2024-10-10 14:40:37	2024-10-10 14:41:04	149	7695	4028. 4028. Go ahead. The passenger is still on your bus, right? Yes. All right. Just proceed. The coordinator is going to meet you at Groveland Retro Station. 10-4? 10-4. All right, Mr.
14103	26	2024-10-10 14:35:02	2024-10-10 14:35:28	149	7695	Where did she say she tripped at? Did she say she tripped on or off the bus? I mean, she just got on, she was getting on the bus, and she said, I've got to twist my ankle, and she's saying whatever she's saying, and she got off the bus and was taking pictures and, you know, whatever. I asked her again, you know, was everything okay? She didn't say anything. So I don't know. What I'm saying is, I don't know, should I proceed on, or do you want, what do you want to do?
14110	24	2024-10-10 14:35:31	2024-10-10 14:35:58	149	7695	Is she claiming anything? Like, is she saying anything to you, trying to claim, like she tripped on the bus or off the bus? No, she didn't say anything to me. She just started taking pictures, and I think it's just, I don't know, one of those cases. I don't know. All right. At the end of the day, I need you to do a report on that. 10-4? 10-4.
14097	25	2024-10-10 14:34:23	2024-10-10 14:34:50	149	7695	4028. 4028. Good morning. This is 4028. I'm at a medical center. And I have a customer. I hear her saying she tripped and she twisted her ankle. She got off the bus. She's taking pictures. And, you know, she's doing all this and the other. So I asked her was she okay or did something happen. And, you know, she just walked on to the back of the bus. Do you want me to proceed on or what do you want me to do?
14101	6	2024-10-10 14:34:52	2024-10-10 14:34:59	149	7695	Did she trip on or off the bus? I didn't see either.
14136	2	2024-10-10 14:37:40	2024-10-10 14:37:43	144	7700	All right, give it a break.
14138	2	2024-10-10 14:37:44	2024-10-10 14:37:46	144	7700	Number four.
14116	3	2024-10-10 14:36:19	2024-10-10 14:36:22	144	7700	Mobile 3. Good morning.
14127	28	2024-10-10 14:36:21	2024-10-10 14:36:58	149	7695	4028, go ahead. Yeah, just stand by for a second. I'm going to have a coordinator. The lady's still on your bus, correct? Yes. All right, I'm going to have a coordinator come by and take her statement. 10-4. 10-4, so just stay here. Yeah, that is correct. Just stay right there. I'm going to have a coordinator come to you and take the statement. 10-4.
14158	55	2024-10-10 14:38:02	2024-10-10 14:39:12	144	7700	Go ahead, 4. Yeah, sobriety. I'm going to need that hard drive from my bus 4028. Okay, where's the bus located at? Medical Center. All right, 10-4. Just tell them sit tight. I'm on my way. All right. If Mr. Bryce so happy to get it and get there before you and the bus pull off, it is doing a 46 to the college. 10-4, do you want me to just wait right here for them or just meet them at Groszner, when they pull into Groszner? You can wait right there. I'll let you know when they start moving again. 10-4, you know what? I'm going to go to Groszner and wait for them right there where there's less traffic and when they pull off of the road, I can get to them right there. So I'll be at Groszner Station. Okay, 10-4.
14183	15	2024-10-10 14:41:06	2024-10-10 14:41:24	144	7700	All right, Mr. Bride, you can stand down. She's just going to meet Sobriety. He can do all-in-one right there in the station. Mobile 3, copy. Thank you, Mr. Sobriety. Copy that. Don't worry about it. I got you.
16909	3	2024-10-10 18:41:08	2024-10-10 18:41:13	144	7700	ERROR: TRANSCRIPTION_TIMEOUT
16978	1	2024-10-10 18:50:40	2024-10-10 18:50:41	144	7700	Townsend Central.
16996	5	2024-10-10 18:52:19	2024-10-10 18:52:25	144	7700	93 for the, for our 43 in which direction? 43 in growth.
14207	23	2024-10-10 14:42:46	2024-10-10 14:43:14	144	7700	Go ahead. Are you a Durmantown transit owner? Tenfold. Okay, bus 2011 going to you with a 97, and can you please explain to her that the way she's doing it is the PM part. She needs to do it in the opposite direction for the AM. After 12, it goes the way she's doing it.
14250	2	2024-10-10 14:47:55	2024-10-10 14:47:57	144	7700	Four, ten, five, four, ten!
14272	6	2024-10-10 14:49:08	2024-10-10 14:49:13	144	7700	10-4, Route 4 runs from Silver Spring to Wheatland Station all day long.
14223	13	2024-10-10 14:44:56	2024-10-10 14:45:19	144	7700	I don't know what I... Can you turn on your bus number? 2011. 2011. I don't see 2011 up here. No, she's not there yet. She's on the way to Germantown Transit.
14226	1	2024-10-10 14:45:24	2024-10-10 14:45:25	144	7700	Careful.
14276	1	2024-10-10 14:49:16	2024-10-10 14:49:17	144	7700	10-4, thank you.
14268	10	2024-10-10 14:48:50	2024-10-10 14:49:01	144	7700	Good morning, Flex 1006. How can I help you? You know, I got a class member looking for Route 4. Are you still running Route 4 from Silver Spring?
14439	1	2024-10-10 15:05:47	2024-10-10 15:05:48	144	7700	I won't wait.
14419	2	2024-10-10 15:03:40	2024-10-10 15:03:42	144	7700	Jeff Larson, good morning.
14421	14	2024-10-10 15:04:01	2024-10-10 15:04:15	144	7700	Hey Central, this is Flex1005. Just giving you a heads up, some of the pickups on the driver app are coming in late and some are just not showing up at all. So, you might get some calls.
14443	9	2024-10-10 15:05:54	2024-10-10 15:06:07	144	7700	When does the PM stop and the AM begin? I mean, when does the AM stop and the PM begin?
14475	17	2024-10-10 15:07:15	2024-10-10 15:07:35	144	7700	Oh, here's it. Accident is clear on Shady Grove access road to the Shady Grove station west side. Turn 4. Turn 4. Thank you, Tom.
14319	3	2024-10-10 14:54:36	2024-10-10 14:54:39	144	7700	ERROR: TRANSCRIPTION_TIMEOUT
14425	32	2024-10-10 15:04:20	2024-10-10 15:05:06	144	7700	You're on the Flex 1005, right? Yes, I realized that issue because I picked up a passenger and she told me she had ordered it like half an hour ago and it didn't show up on my app at all. My app had been working the whole morning because I've been doing it since 5 in the morning. Do you know how to reset the tablet? Yes, I reset everything. Just giving you a heads up in case it happens again. Bye. Bye.
14605	3	2024-10-10 15:18:05	2024-10-10 15:18:08	144	7700	ERROR: TRANSCRIPTION_TIMEOUT
14407	10	2024-10-10 15:02:27	2024-10-10 15:02:40	149	7695	This is 5747. You're running a little hot. I need you to pull over and catch up to your time, 10-4. 10-4.
14461	1	2024-10-10 15:06:47	2024-10-10 15:06:48	144	7700	Copy that.
14451	19	2024-10-10 15:06:11	2024-10-10 15:06:31	144	7700	Okay, at 12, exactly at 12, that's when it's supposed to go the opposite direction. It makes a right on crystal rock, a left on century. In the morning, it makes a left on crystal rock.
14458	1	2024-10-10 15:06:44	2024-10-10 15:06:45	144	7700	See you later.
14393	3	2024-10-10 15:01:58	2024-10-10 15:02:01	144	7700	ERROR: TRANSCRIPTION_TIMEOUT
14418	3	2024-10-10 15:03:34	2024-10-10 15:03:38	144	7700	I'm heading away with the heart rate.
14469	3	2024-10-10 15:07:10	2024-10-10 15:07:13	144	7700	Welcome, thanks. This is Rob.
14464	4	2024-10-10 15:06:50	2024-10-10 15:06:55	144	7700	After 12 o'clock, make sound right up for the road.
14823	10	2024-10-10 15:35:37	2024-10-10 15:35:52	144	7700	Mobile to the center. Hello, mobile to. Yeah, I'm going to start heading back to the import and take over, yes. Thank you, Arthur.
16674	3	2024-10-10 18:17:43	2024-10-10 18:17:46	151	7720	ERROR: TRANSCRIPTION_TIMEOUT
16703	10	2024-10-10 18:21:12	2024-10-10 18:21:24	144	7700	Go ahead, 7. I'll be 10-7 for the remainder. Y'all have a good one. 10-4. Thank you for your day-to-day, and you guys please get home safe.
16701	2	2024-10-10 18:21:00	2024-10-10 18:21:04	144	7700	No, no, no.
17009	2	2024-10-10 18:53:16	2024-10-10 18:53:19	145	7690	Essential 5325.
15034	5	2024-10-10 15:55:49	2024-10-10 15:55:57	144	7700	4536 PM5
15099	6	2024-10-10 16:01:27	2024-10-10 16:01:35	144	7700	Thank you for your help.
15030	5	2024-10-10 15:55:13	2024-10-10 15:55:22	144	7700	Good morning, Mr. Wells. Good morning. I'm turning on 1264.
15085	4	2024-10-10 16:00:23	2024-10-10 16:00:27	144	7700	Google 6, to Central.
15024	1	2024-10-10 15:54:59	2024-10-10 15:55:00	144	7700	What is mentioned?
15220	7	2024-10-10 16:12:37	2024-10-10 16:12:47	144	7700	Carlitos, what's going on? Hey, what's up, Kevin? I'll be 10-8-11-28-6704.
15087	6	2024-10-10 16:00:36	2024-10-10 16:00:43	144	7700	Come on six. Yeah, what was fit this person? What did you mean that? Well.
15129	4	2024-10-10 16:04:37	2024-10-10 16:04:41	145	7690	Yeah, this is 424.
15133	35	2024-10-10 16:04:55	2024-10-10 16:05:34	145	7690	Good afternoon, 4044. Go ahead with your message. Thank you for the answer. We'll have somebody check it out.
15143	17	2024-10-10 16:05:37	2024-10-10 16:05:57	145	7690	I think you can make it from going to Germantown, but you cannot make that right. Everybody has to take a left coming from Germantown. Coming the opposite way, you might be able to do that. I'm not sure. 10-4. Thank you.
15159	3	2024-10-10 16:07:10	2024-10-10 16:07:15	144	7700	4-4-8. Copy on Monroe.
15200	27	2024-10-10 16:10:29	2024-10-10 16:10:57	144	7700	All right, as of right now, the 55 is going to have to let off on the corner of Observation and Germantown Road to go into college. We got fire apparatus and emergency vehicle in that section. They can't come off of Observation like the Germantown Road, but cannot continue over Observation into college.
15214	57	2024-10-10 16:11:18	2024-10-10 16:12:26	144	7700	Trentown Road and continue on. So they can make the left turn and just drop the people off across the street from observation, right? Was that observation or was that... Only thing that's obstructed is the right there on the corner coming out of MC. They can make the left and drop them off across the street. 10-4. Only thing that's obstructed is MC. So both directions, they cannot go into MC. I'm riding without MC. Yeah, 10-4. Well, I had no 55s leaving right now, as of now. So probably it'll be cleared up in a few, maybe. What you think? Yeah, it's a 10-4. Tow truck on scene already. I'm going to stand by and let you know when it's completely clear. Copy that. Thank you. 10-4. Checking on Lazzo tomorrow. That sounds like a plan.
15088	5	2024-10-10 16:00:46	2024-10-10 16:00:52	144	7700	Yeah, of course. Thank you for your help. Have a safe one.
15093	2	2024-10-10 16:01:15	2024-10-10 16:01:20	144	7700	Well, what's your essential?
15130	6	2024-10-10 16:04:46	2024-10-10 16:04:52	145	7690	Good afternoon, 4044. Go ahead with your message. Yeah, this is 4044.
15197	1	2024-10-10 16:10:25	2024-10-10 16:10:26	144	7700	Great, Ms. Andrews.
15205	2	2024-10-10 16:11:13	2024-10-10 16:11:14	144	7700	and left from
15203	1	2024-10-10 16:11:06	2024-10-10 16:11:07	144	7700	Right.
15229	14	2024-10-10 16:13:11	2024-10-10 16:13:26	144	7700	All right, Carlos Perez. You're going to be PM3, 10-4? 10-4, Zone 3.
15217	2	2024-10-10 16:12:33	2024-10-10 16:12:35	144	7700	Thank you.
15242	11	2024-10-10 16:14:17	2024-10-10 16:14:31	144	7700	Carlos. Perez. Yeah, I got it. You know what? I'm going to move you to zone 6. 10-4. That works for me.
15309	2	2024-10-10 16:18:59	2024-10-10 16:19:01	144	7700	Where did you go?
15313	9	2024-10-10 16:19:10	2024-10-10 16:19:19	144	7700	I need a mobile unit in Bethesda. Anybody near Bethesda got a bus with issues, mechanical issues.
15303	2	2024-10-10 16:18:35	2024-10-10 16:18:37	144	7700	I'm over with three.
15317	16	2024-10-10 16:19:22	2024-10-10 16:19:38	144	7700	Yeah, mobile 3. I'm just pulling out from Salamash. You want me to head that way? All right, Mr. Brody. Your bus is 2019-2019. See if you can reset it so I can finish his last lap. I believe we only got about two more trips.
15318	2	2024-10-10 16:19:41	2024-10-10 16:19:43	144	7700	2019, copy.
15392	1	2024-10-10 16:25:11	2024-10-10 16:25:12	144	7700	Bye-bye.
15395	5	2024-10-10 16:25:22	2024-10-10 16:25:27	144	7700	Tell me it's all clear, mobile 8.
15521	2	2024-10-10 16:40:47	2024-10-10 16:40:49	144	7700	All three central.
15523	3	2024-10-10 16:41:03	2024-10-10 16:41:06	144	7700	All three central.
15503	3	2024-10-10 16:38:31	2024-10-10 16:38:34	144	7700	Move for a 10th of 2019.
15454	2	2024-10-10 16:31:12	2024-10-10 16:31:15	144	7700	Well, thank you.
15538	5	2024-10-10 16:41:54	2024-10-10 16:42:01	144	7700	Yeah, they hit the Rockville and pull out the 110.
15458	4	2024-10-10 16:31:41	2024-10-10 16:31:49	144	7700	Ten-four, I'll be here tomorrow.
15534	3	2024-10-10 16:41:45	2024-10-10 16:41:53	144	7700	Rockville. You want me to take that to Rockville?
15457	10	2024-10-10 16:31:25	2024-10-10 16:31:39	144	7700	Go ahead, fire. I'll be 10-7 for the remainder. You guys enjoyed the rest of your day. Copy, copy. Thank you for working longer.
15543	8	2024-10-10 16:42:23	2024-10-10 16:42:32	144	7700	All right, Mobile, we're in central. It'll be 10-7 for the remainder. Everybody have a good afternoon. Thank you, Mr. Bright.
15530	16	2024-10-10 16:41:14	2024-10-10 16:41:36	144	7700	Over three. Sorry about that. We started on 2019. Where do you want to pick it up at? 2019? Let me look up that run. You know the block number that bus on? 3010.
16770	14	2024-10-10 18:28:29	2024-10-10 18:28:47	149	7695	Sentra, this is 4094. I need to log in. My driver ID is 3148 from number 346. Alright, 24. I'll try to log in. Thank you, Sentra.
15729	3	2024-10-10 16:58:11	2024-10-10 16:58:15	144	7700	847. 847.
15734	10	2024-10-10 16:58:15	2024-10-10 16:58:26	149	7695	58 57 radio check. Good afternoon. Loud and clear. 10-4 loud and clear.
15736	1	2024-10-10 16:58:28	2024-10-10 16:58:29	149	7695	Okay.
16946	2	2024-10-10 18:45:20	2024-10-10 18:45:22	149	7695	4113.
15972	3	2024-10-10 17:19:03	2024-10-10 17:19:07	144	7700	Look at that in the center, this is nice.
16032	3	2024-10-10 17:23:12	2024-10-10 17:23:15	144	7700	All right, 10-4, 2.2. Thank you.
15874	58	2024-10-10 17:07:51	2024-10-10 17:08:50	152	7730	Thursday, October 10, 2024. Safety message. Scan steering wheels. Always scan steering wheels of cars to see if the vehicle is occupied. An occupied vehicle presents two hazards. The person may either exit the vehicle or pull away from the curb. To see if the vehicle is occupied, look for the steering wheel turn, look for the tail lights to come on, and exhausts coming from the tailpipe. If you cannot determine that the vehicle is occupied, treat it as occupied. Why? The path of least resistance. That is today's safety message. Scan steering wheels. Everybody be safe. Have a good day. Remember, safety first. Customer service, a close second.
15933	6	2024-10-10 17:15:15	2024-10-10 17:15:23	145	7690	Okay, give me an airline then. Okay, now. Give us an airline then.
16029	8	2024-10-10 17:22:59	2024-10-10 17:23:10	144	7700	Mr. Ruiz. Go ahead. Still waiting. Two points for now. Might change later, okay?
16051	10	2024-10-10 17:24:21	2024-10-10 17:24:32	145	7690	Good afternoon, Mr. Wilson. Your radio check is out in clear on bus 4084. Have a safe, wonderful day. Thank you very much. Have a great day, too.
15930	18	2024-10-10 17:14:48	2024-10-10 17:15:08	145	7690	Okay, hold on. Let me look at the left and right so I can give you access to the rest until that. When you get to the station, give me a call when you have time. That way you can write it down. I'm where I can write it down right now. I'm behind target. I start in like three minutes.
15922	20	2024-10-10 17:14:22	2024-10-10 17:14:42	145	7690	I was just trying to call you for myself. I don't want to mess up the second half of this 90 thing. When I leave Milestone to go back up north, I know I have to serve the Amp Park. Do I make a right just past the Walmart and get back on 27 and head up that way? I don't want to screw this up.
15992	2	2024-10-10 17:20:30	2024-10-10 17:20:32	144	7700	Good afternoon Max.
15996	7	2024-10-10 17:20:35	2024-10-10 17:20:44	144	7700	Who are you at the moon of DNA?
16071	10	2024-10-10 17:26:12	2024-10-10 17:26:24	149	7695	I got your loud and clear, sir. Have a sweet day. Thank you. You too.
15987	5	2024-10-10 17:20:19	2024-10-10 17:20:24	144	7700	This is Max.
16048	4	2024-10-10 17:24:14	2024-10-10 17:24:17	145	7690	Good afternoon, Central 4084, radio check.
16109	6	2024-10-10 17:29:20	2024-10-10 17:29:30	144	7700	Who are you calling? That would be you, sir. Can you please move over towards...
16236	6	2024-10-10 17:39:54	2024-10-10 17:40:01	144	7700	Go ahead, AMA. 10-7 for the remainder. You guys enjoy the rest of the evening.
16208	3	2024-10-10 17:38:31	2024-10-10 17:38:34	149	7695	Did you copy 4113?
16099	2	2024-10-10 17:28:56	2024-10-10 17:28:58	144	7700	AM 2.2.
17016	9	2024-10-10 18:53:38	2024-10-10 18:53:48	144	7700	93. AM 2.2, AM 1, AM 2, 10-7 vote remaining.
16291	6	2024-10-10 17:44:53	2024-10-10 17:44:59	149	7695	4113, come back. Yes, sir. 4113, go ahead.
16297	9	2024-10-10 17:45:12	2024-10-10 17:45:23	145	7690	Good afternoon, sir. Radio check is loud and clear on bus 42035. Have a safe, wonderful day. Copy that. You as well.
16112	13	2024-10-10 17:29:32	2024-10-10 17:29:46	144	7700	So we no longer have a 1 and 2, so could you please move over to close to the station? Yeah, I already have it. I'm down at Silver Spring. 10-4. Thank you, sir.
16104	3	2024-10-10 17:29:12	2024-10-10 17:29:15	144	7700	AM 2.2
16254	9	2024-10-10 17:41:33	2024-10-10 17:41:46	144	7700	Coordinator Max, Coordinator Max, could you please give Central a landline? Could you please give me a landline, please?
16238	5	2024-10-10 17:40:05	2024-10-10 17:40:12	144	7700	10-4, sir. Thank you for your day-to-day. Please be at home safe. 10-4, thank you.
16232	2	2024-10-10 17:39:38	2024-10-10 17:39:40	144	7700	I am eight to central.
16294	4	2024-10-10 17:45:06	2024-10-10 17:45:10	145	7690	2035, do no radio, check.
16413	2	2024-10-10 17:57:06	2024-10-10 17:57:08	144	7700	Hi, Mama Leith.
16206	22	2024-10-10 17:38:03	2024-10-10 17:38:25	149	7695	Yeah, good afternoon, 4113. Come back. Yeah, good afternoon, 4113. I'm not sure how or why it's telling me you're running nine minutes hot. But if that's the case, you need to pull that bus over because you're missing people, especially the ones that are leaving Walmart wanting to catch that bus.
16248	7	2024-10-10 17:41:14	2024-10-10 17:41:24	144	7700	PM 2.2. Go ahead. You're AM. I'm looking for the PM.
16286	17	2024-10-10 17:44:24	2024-10-10 17:44:44	149	7695	Good afternoon, Central. This is 403. Good afternoon, 4039. I have you loud and clear, sir. Please have a safe day. Thank you. I'm going to try. You have a great day yourself. Bye-bye. 10-4. Thank you.
16298	25	2024-10-10 17:45:02	2024-10-10 17:45:29	149	7695	Well, someone called me and pretty much said I was running hot, and I couldn't understand why, so I don't think I just sorted out. Yeah, that was me, sir. It did say that you were running hot, and now it says you're running seven minutes early. So I'm not really sure what's going on with the system. But I do appreciate you, uh, just continue your run for now. 10-4, thank you.
16417	11	2024-10-10 17:57:15	2024-10-10 17:57:26	144	7700	You know, I was driving 2014, like 366. I just found it by McDonald.
16419	2	2024-10-10 17:57:28	2024-10-10 17:57:30	144	7700	Mr. Hatcher Wayne.
16905	16	2024-10-10 18:40:37	2024-10-10 18:40:57	149	7695	20-10. Hello, Central. 20-10, radio check. I'm on my way to Greenland. All right, then. I'll have you loud and clear. Central time is 2.40. Have a safe day. Central.
16952	3	2024-10-10 18:45:30	2024-10-10 18:45:36	149	7695	4113.
16974	11	2024-10-10 18:49:52	2024-10-10 18:50:03	145	7690	Yes, sir. Twinbrook Parkway and Marshall Avenue. Passed by, um, three passengers due to a full bus. 10-4? 10-4, Morgan. 10-4.
16986	11	2024-10-10 18:51:03	2024-10-10 18:51:22	144	7700	Good afternoon, Thompson. Good afternoon. I am, uh, 10-8, uh, 18-30. Zone 7 for me, please. 10-4.
16976	3	2024-10-10 18:50:27	2024-10-10 18:50:30	144	7700	ERROR: TRANSCRIPTION_TIMEOUT
17004	3	2024-10-10 18:52:58	2024-10-10 18:53:03	145	7690	5-3-2-5? 5-3-2-5?
17005	2	2024-10-10 18:53:05	2024-10-10 18:53:09	145	7690	Central, 5325.
17020	24	2024-10-10 18:53:51	2024-10-10 18:54:18	144	7700	Go ahead. Yeah, 2.2, 1 and 2. Mr. Ricardo, please have some etiquette on the radio. 93. So bus 4141 is on that run. However, it is not tracking. So I'm not able to... It's on its way past Oakland right now. Okay.
17027	2	2024-10-10 18:55:14	2024-10-10 18:55:16	144	7700	All right, 10-4.
17038	1	2024-10-10 18:56:42	2024-10-10 18:56:43	145	7690	1078.
17059	2	2024-10-10 18:57:45	2024-10-10 18:57:46	145	7690	City 27, I can help you.
17063	4	2024-10-10 18:58:07	2024-10-10 18:58:11	145	7690	Negative contact with 5027 at 2.58 p.m.
17074	24	2024-10-10 18:58:40	2024-10-10 18:59:12	145	7690	4153. 4153, come on. 4153, come on. What is your ID and run number? Are you talking, Central? I'm on block 1200, picking 1200 up. I'm eating a lunch and pulling the route out from here at Tacoma Station. Give me a landline, sir.
17023	12	2024-10-10 18:54:22	2024-10-10 18:54:35	144	7700	So you're saying he's just coming through there now? I just passed Oakmont on Shady Grove Road. So he was probably there a few minutes late.
17035	9	2024-10-10 18:56:23	2024-10-10 18:56:32	144	7700	Can you head over towards Amherst by Acola for bus 530? It looks like it says you're trying to have the bus to raise and not raise.
17164	2	2024-10-10 19:07:11	2024-10-10 19:07:13	145	7690	5075.
17026	27	2024-10-10 18:54:42	2024-10-10 18:55:12	144	7700	All right, 10-4. So he did service the area. I don't know. If you're not tracking it, I may never know. Who's the driver? Do you know? Luis, operator 1385. Yeah, he knows. He knows to go down there. So he had to service it. So I'm going down to see if I can talk to the customer. If this is the same one I'm having a problem with, it didn't show up.
17034	2	2024-10-10 18:56:16	2024-10-10 18:56:21	144	7700	Central Mobile 5. Mobile 5.
17037	2	2024-10-10 18:56:35	2024-10-10 18:56:37	144	7700	Mr. Demers and Arcola.
17117	6	2024-10-10 19:02:20	2024-10-10 19:02:28	144	7700	Mobile 5, 10-5-5, 3-3-0. 10-4, Mobile 5.
17088	2	2024-10-10 18:59:51	2024-10-10 18:59:53	144	7700	After 10-4.
17182	15	2024-10-10 19:08:32	2024-10-10 19:08:51	144	7700	Go ahead, Fox. Let me take a look one moment.
17114	15	2024-10-10 19:01:57	2024-10-10 19:02:15	149	7695	Good afternoon, Central 2028. Calling in for a radio check. Good afternoon, 2028. I got you loud and clear, sir. Central time is 302. Have a safe afternoon. Good answer, Central. Thank you. You too.
17191	17	2024-10-10 19:09:26	2024-10-10 19:09:44	144	7700	Mobile 5S negative. Nothing within the next hour. What I recommend, because he's going to be out there probably about 8 or 10 tonight, have him bring the bus back to the garage, shop it, get in front of the bus. Careful, have him shop it, and then we pick up his 4 o'clock at Friendship Heights.
17173	22	2024-10-10 19:07:47	2024-10-10 19:08:14	149	7695	5027. Yeah, 5027. I see you're having difficulties logging in. What's your run number and your ID? Maybe I can help you from here. Run is 102. My ID number is 2080. 10-4. I'll try and log you in from here, sir. Thank you.
17174	62	2024-10-10 19:07:15	2024-10-10 19:08:25	145	7690	Yes, sir. I'm Sandy here. Hey, Sandy. What run are you on? I'm going 102. Okay. If you're on 102, right now you're supposed to be pulling out of Tacoma with a Route 25. There was a confusion, sir. I went to the desk, and because the yard guy told somebody has taken the bus, that is why I went inside. They were holding me. That is why I'm late, sir. To Tacoma to pull out your 25? Sir, I will be pulling my 25 from Tacoma. That is why I'm late, because the desk, he told me, the sir told me to wait. Sandy, let me check who's doing this run. That is why. Okay, Sandy, I tell you what, because I have two runs that are double booked. So do me a favor. Deadhead to Langley Park. Deadhead to Langley Park. And then give me a call when you get there, all right? All right, sir. 10-4.
17085	26	2024-10-10 18:59:15	2024-10-10 18:59:49	144	7700	Go ahead, 93. All right. The customer said the bus did come, and she's on it. So thanks a lot. After 10-4, I did also call that bus on fallback, and he verified that he did go down there as well. I texted her, told her I was going to come down and see her, and she said the bus came, and she's on it. So I'm happy. This is my Friday.
17216	28	2024-10-10 19:11:51	2024-10-10 19:12:23	145	7690	5075. Hello? Hey, Sandy, do me a favor. Your desk wants you to return back to base, all right? So when it's safe to do so, just deadhead back to base. 10-4? Sir, you want me to go back to the depot? Yes, ma'am. Return to your depot and see coordinator Walker. 10-4? 10-4, sir. Thank you. I'll go back to the depot. Thank you, sir. 10-4.
17176	1	2024-10-10 19:08:28	2024-10-10 19:08:29	144	7700	4-5 Central.
17193	17	2024-10-10 19:09:34	2024-10-10 19:09:55	149	7695	5027. Yeah, 5027. So apparently there's been a mix-up here. So once you get to Langley Park, please give your desk a call. Give your desk a call when you get to Langley Park, please. Okay. Thank you, sir.
17194	7	2024-10-10 19:09:46	2024-10-10 19:09:58	144	7700	That's 10-4, I'll go ahead and cancel 34 from Wheaton Friendship. 10-4.
17276	13	2024-10-10 19:18:37	2024-10-10 19:18:50	152	7730	Operator 2792, operator 2792, please give Central a landline. Operator 2792, please give Central a landline.
17451	1	2024-10-10 19:36:27	2024-10-10 19:36:29	145	7690	5349.
20708	2	2024-10-11 01:05:24	2024-10-11 01:05:26	144	7700	Another one.
20672	38	2024-10-11 00:59:07	2024-10-11 00:59:45	147	7710	Central of Silver Spring operating on Smallback Channel at this time on Route 20, going to Hill and Dale, we're bypassing Northwest Park due to a crash at the intersection of New Hampshire Avenue and Southampton Drive. At this time, going to Silver Spring, the area is still blocked over shortly in a couple minutes and hopefully will reopen. Once again, at this time, we are bypassing Southampton, Northampton Drives, going to Hill and Dale on New Hampshire Avenue. Central will contact you if you need to detour and you're going to Silver Spring. Central is clear if you can.
20709	7	2024-10-11 01:05:31	2024-10-11 01:05:39	144	7700	Flight 1. The accident on Southampton you have here is clear and the road is open now.
20718	19	2024-10-11 01:06:05	2024-10-11 01:06:24	152	7730	Central all operates in Route 20. At this time, normal routing on Route 20 via crash at New Hampshire Avenue and South Hampton Avenue is now clear. So again, we're going back to normal routing on both directions on Route 20 to Hill and Hill and also to Silver Spring. Central is clear at 9 or 6 p.m.
20812	10	2024-10-11 01:17:19	2024-10-11 01:17:29	144	7700	All right, 10th floor, sir. Please don't forget to charge your radio for tomorrow morning. And have a good night, and thank you for hanging out with us.
17533	6	2024-10-10 19:42:29	2024-10-10 19:42:35	144	7700	Dr. John, I'm ten eight week as a 12-24 person's phone.
17455	11	2024-10-10 19:36:31	2024-10-10 19:36:48	145	7690	Only with the beltway looks like going north towards Twinbrook. Looks like it's open, Sam. Looks like it's open. 10-4.
17529	2	2024-10-10 19:42:05	2024-10-10 19:42:07	144	7700	ERROR: TRANSCRIPTION_TIMEOUT
17539	10	2024-10-10 19:42:37	2024-10-10 19:42:51	144	7700	What was the vehicle getting on me? One, two, two, four. We don't have a one and two for the time being on me, cover one and two. Yeah, thank you.
17527	3	2024-10-10 19:41:32	2024-10-10 19:41:34	144	7700	We are left in an army to censure.
20691	50	2024-10-11 01:01:20	2024-10-11 01:02:10	152	7730	Attention, ride-on operators. Ride-on operators, it is time for your last safety message of the day. Scan steering wheels. Always scan steering wheels of parked cars to see if the vehicle is occupied. An occupied vehicle presents two hazards. The person may either exit the vehicle or pull away from the curb. To see if a vehicle is occupied, look for the steering wheels turned. Look for tail lights to come on and exhaust coming from the tailpipe. If you cannot determine if the vehicle is occupied, treat it as occupied. Why do we do this? To choose the path of the least resistance. Everyone, please be safe out there. Central time is 9.02.
17513	3	2024-10-10 19:40:38	2024-10-10 19:40:40	144	7700	All the afternoon, mate, the sun show.
17531	2	2024-10-10 19:42:23	2024-10-10 19:42:24	144	7700	Hey, what's going on, me?
17732	2	2024-10-10 20:02:47	2024-10-10 20:02:48	144	7700	Central, mobile one.
17692	12	2024-10-10 19:58:10	2024-10-10 19:58:29	144	7700	I was going to make out what he was saying the issue was. He was talking very softly. I'm on my way. All right, 10-4 again. The bus is 4020. I believe it's in the 14 bay. Copy that. Thank you.
17749	4	2024-10-10 20:03:27	2024-10-10 20:03:34	144	7700	Oh, I checked both. Just give me a minute, okay? Doctor, please explain.
17761	2	2024-10-10 20:04:24	2024-10-10 20:04:26	144	7700	Coordinator Hughes, we're the central.
17677	3	2024-10-10 19:56:39	2024-10-10 19:56:43	144	7700	All right, three.
17763	6	2024-10-10 20:04:33	2024-10-10 20:04:44	144	7700	Hey, Debbie. Hey, I'm 10-8, car 1677. Where do you want me to go?
17782	6	2024-10-10 20:06:22	2024-10-10 20:06:29	144	7700	The recording is being good, so stand by for one moment, please. All right, Bobby. No problem.
17686	2	2024-10-10 19:57:40	2024-10-10 19:57:42	144	7700	Central level one.
17739	2	2024-10-10 20:02:56	2024-10-10 20:02:58	144	7700	Have you been able to locate 4020?
17772	4	2024-10-10 20:05:34	2024-10-10 20:05:39	144	7700	Do me a favor of cover two. Okay.
17864	3	2024-10-10 20:13:13	2024-10-10 20:13:16	149	7695	40-81, 40-81.
17690	16	2024-10-10 19:57:49	2024-10-10 19:58:10	144	7700	4020 seems to be having issues with his bus. He's on a mule break right now. I couldn't make all the bay he was in, but it looks like he might be in the 14 bay because that's his next trip. For what time he's leaving?
17702	15	2024-10-10 19:58:57	2024-10-10 19:59:20	144	7700	Good night, Don. Do you know about the accident on 370? Negative. Right there before 270, both sides of the road. Looks like a motorcycle or something. It could be there a while. One lane getting by each way. Careful.
17723	2	2024-10-10 20:01:50	2024-10-10 20:01:52	144	7700	Coordinator, please go to the central.
17733	54	2024-10-10 20:01:50	2024-10-10 20:02:49	149	7695	4055. Go ahead with your message, 4055. Yeah, I'm doing 100, going towards Shady Grove. My dad stopped on the bridge at 370. Are we taking 355 when we get off, or where's the actual accident? We just got word of it, so we're trying to figure that out. Everybody's going to be getting off at 355, but it's also looking like... that that traffic goes all the way to Shady Grove Road exit. Stand by. Give us a moment. Since we're just sitting still, just give me a moment and figure it out. Yeah, 10-4. We're just rolling off of it, but we're kind of still at the standstill. That's what I was asking. 10-4.
17771	4	2024-10-10 20:05:25	2024-10-10 20:05:31	144	7700	Go ahead, Elspen. I will not say it for some fail.
17830	3	2024-10-10 20:10:08	2024-10-10 20:10:11	144	7700	ERROR: TRANSCRIPTION_TIMEOUT
17697	5	2024-10-10 19:58:44	2024-10-10 19:58:52	144	7700	93 Central. Go ahead, 93. Calipari National 370, right.
17765	6	2024-10-10 20:04:48	2024-10-10 20:04:56	144	7700	Hey, Dad, do me a favor. You covered three and four for the time being.
17778	3	2024-10-10 20:06:08	2024-10-10 20:06:11	144	7700	Ordinello Dominguez Central.
17858	26	2024-10-10 20:11:37	2024-10-10 20:12:03	152	7730	The 76 and the 74 coming from 370. You as well are going to take the 270 South exit and get off at the very next exit, which would be Shady Grove Road exit. Make the left on the Shady Grove Road and bring your run in to Shady Grove that way.
17685	1	2024-10-10 19:57:28	2024-10-10 19:57:29	144	7700	I agree.
17745	22	2024-10-10 20:03:01	2024-10-10 20:03:25	144	7700	I'm almost there. All right. Can you guys see, I believe it's probably going to be the flashback, but 6004. Operators complained about having issues with the right mirror. We're trying to get a bus switch out to Bricks Cheney. It's impossible to get a bus down to Silver Spring. Can you try to see if you can fix your mirror or do something so at least you can get up to Bricks Cheney?
17756	3	2024-10-10 20:03:52	2024-10-10 20:03:55	144	7700	So, that's it.
17826	1	2024-10-10 20:09:51	2024-10-10 20:09:53	144	7700	AM 4.
17861	17	2024-10-10 20:12:23	2024-10-10 20:12:49	147	7710	Last bus, go ahead and call 5366. Repeat. Go ahead of your message, 5366. This is 5366. My phone, the landline, I'm going to call landline because it's breaking up with my end. 10-4.
17954	3	2024-10-10 20:21:11	2024-10-10 20:21:14	145	7690	4081, go ahead with your message.
17687	1	2024-10-10 19:57:46	2024-10-10 19:57:47	144	7700	Why?
17737	1	2024-10-10 20:02:52	2024-10-10 20:02:53	144	7700	Bye-bye.
17829	7	2024-10-10 20:09:57	2024-10-10 20:10:12	144	7700	Go ahead, Clint. All right, John. I'll be 10-7 for you, man. Have a good afternoon. Appreciate you.
17768	14	2024-10-10 20:05:02	2024-10-10 20:05:23	144	7700	You talking to me? Debbie, did you get my message? I was trying to talk. Oh, you said 3 and 4? Yeah, 3 and 4 for the time being. Try to get you to know. Alright, 10-4.
17852	54	2024-10-10 20:10:37	2024-10-10 20:11:30	152	7730	Attention Gaithersburg operators, Gaithersburg operators. There's been an accident on 270 and 370. So those of you that are going southbound 270, southbound 270, when you get to the ramp for the 370 exchange, take the first exit that's going to take you over to Rio. Then across the bridge, come back down going to 370, but you're going to take your 270 south exit to the Shady Grove Road exit. From the Shady Grove Road exit, you're going to make the left on the Shady Grove Road and bring it into the station accordingly on through Shady Grove Road.
17867	15	2024-10-10 20:13:28	2024-10-10 20:13:43	144	7700	Okay, in terms of this bus switch for 6004, it has to be down at Briggs Cheney. Due to various incidents on both the Beltway and 270, it's impossible to get a bus from Gaithensburg down to Silver Spring. One second, one second.
17883	9	2024-10-10 20:15:05	2024-10-10 20:15:21	144	7700	Oh, central level one. Level one? Actually, can you give me a landline, please? Central.
17870	17	2024-10-10 20:14:12	2024-10-10 20:14:29	152	7730	Attention Gaithersburg operators, Gaithersburg operators, those of you coming southbound towards Shady Grove Station. There's been an accident and we are diverting traffic.
17949	5	2024-10-10 20:20:41	2024-10-10 20:20:47	145	7690	5081. Go ahead, 5081.
17953	8	2024-10-10 20:21:00	2024-10-10 20:21:09	145	7690	4081. 4081.
17833	1	2024-10-10 20:10:21	2024-10-10 20:10:22	144	7700	ERROR: TRANSCRIPTION_TIMEOUT
17859	6	2024-10-10 20:12:10	2024-10-10 20:12:17	147	7710	Good evening Central, this is bus 5366.
17874	23	2024-10-10 20:14:34	2024-10-10 20:14:57	152	7730	If you're coming down 270 going south, do not take the 370 exit. We are now going to take the Shady Grove exit. Shady Grove exit. You'll make a left on the Shady Grove and head to the station coming down Shady Grove Road. Please utilize Shady Grove Road and not 370.
17951	4	2024-10-10 20:20:48	2024-10-10 20:20:54	145	7690	5081.
17865	27	2024-10-10 20:12:57	2024-10-10 20:13:26	144	7700	I'm 10.5 with 4020 and also I'm 10.5 with 6004. 4020 has a leak underneath the engine. It's dripping a little bit. And 6004, I think the mirror screws loose. It's wobbly, it's moving. So there's nothing like it inside the mirror, you know?
18035	6	2024-10-10 20:28:45	2024-10-10 20:28:55	144	7700	Only in one direction, inbound now. To the parking lot on the other side. I went through there.
18082	2	2024-10-10 20:33:55	2024-10-10 20:33:57	151	7720	4130.
18084	2	2024-10-10 20:34:04	2024-10-10 20:34:05	149	7695	4130.
18088	2	2024-10-10 20:34:13	2024-10-10 20:34:15	149	7695	Last 4130.
17863	3	2024-10-10 20:12:50	2024-10-10 20:12:52	144	7700	No, I want to show you.
18018	6	2024-10-10 20:26:23	2024-10-10 20:26:29	149	7695	I would make a right turn on sharing block exit.
17901	38	2024-10-10 20:16:18	2024-10-10 20:16:57	152	7730	Attention Gaithersburg operators, Gaithersburg operators, those of you that are coming southbound 270 to 370 Exchange. We are not utilizing the 370 Exchange right now. We have a detour in effect. Southbound 270 will divert 370 and utilize the Shady Grove Road exit. to Shady Grove Station utilizing Shady Grove Road. This is until further notice.
18034	8	2024-10-10 20:28:32	2024-10-10 20:28:40	144	7700	Hey, John, you probably ought to put them on City Grove Road in both directions. They're not going to miss any stops anyway. You don't stop on 370.
18113	8	2024-10-10 20:35:14	2024-10-10 20:35:23	149	7695	Central, Central, come in Central. 2130, go ahead with your emergency.
17988	60	2024-10-10 20:23:12	2024-10-10 20:24:12	152	7730	Attention Gaithersburg operators, Gaithersburg operators. Once again, there's an accident at 270 and the 370 exchange. So we are not utilizing 370 at this time. Coming down 270, stay on 270 and take the exit for Shady Grove Road. Make the left on the Shady Grove Road and follow that to the station. 270 to 370 is backed up. There's been an accident. Do not utilize 370. Follow 270 to Shady Grove Road. Make the left on Shady Grove Road and get to the station utilizing Shady Grove Road. This is going to affect the 71, the 73, the 76, the 74, the 78, and the 100, and the 79. Please be advised. Thank you.
18001	2	2024-10-10 20:24:52	2024-10-10 20:24:53	144	7700	Central level 3-4.
18006	13	2024-10-10 20:24:57	2024-10-10 20:25:13	144	7700	Did you say 3-4? Yes, it's 10-4. If you're down by the Bethesda area, can you check out Montgomery Lane? I'm getting reports that the fire department has a truck. The fire truck is blocking, so the buses aren't able to get through.
18033	30	2024-10-10 20:27:55	2024-10-10 20:28:30	145	7690	40-55, I can help you. Yeah. If you're in the far right lane on 270, you can get by right at the 355 exit and then get back on to take the Metro exit. All right. Thank you, Gary. Appreciate it. So if they're in the far right lane, correct? 10-4 as if you're going to take that 355, but it's blocked off right there, and then you can get around it, get right back on it. It's clear. All right. 10-4. Thank you, sir. Thank you.
18036	10	2024-10-10 20:28:59	2024-10-10 20:29:11	144	7700	If you go on camera, it's cleared up. It's no problem. I see some buses have gotten through. There might just be some residual traffic on that end.
17956	11	2024-10-10 20:21:18	2024-10-10 20:21:32	145	7690	Call me first, and then I call back when I'm driving. I end up running into the accident. 10-4, disregard. Thank you.
18031	2	2024-10-10 20:27:49	2024-10-10 20:27:51	145	7690	Four zero five five.
18176	4	2024-10-10 20:40:20	2024-10-10 20:40:24	144	7700	Central, Mobile One. Mobile One.
18097	4	2024-10-10 20:34:34	2024-10-10 20:34:39	149	7695	Negative contact 4130 on a PRTT.
18009	5	2024-10-10 20:25:17	2024-10-10 20:25:24	144	7700	No, I just left the depot, but we'll head that way.
18070	65	2024-10-10 20:31:39	2024-10-10 20:32:44	151	7720	Attention, Gaithersburg Operator, Gaithersburg Operator, 370 is backed up. It has been an accident. So those of you that need to get to Shady Grove Station utilizing 270 southbound, or if you're doing like a 76 coming from the Rio area, from the Rio area, you're going to need to make the Shady Grove exit. 270 southbound exit. I'm sorry. 370 from the Rio area. Take the Shady, the 270 southbound exit to Shady Grove Road. Exit Shady Grove Road and make a left onto Shady Grove Road. Left onto Shady Grove Road to the station utilizing Shady Grove Road. Coming southbound on 270. Stay on 270. Exit Shady Grove Road. left using Shady Grove Road to get to your station.
20712	5	2024-10-11 01:05:41	2024-10-11 01:05:51	144	7700	All right, careful. I'll let everyone know the normal routing. Careful. Thank you. All right, thank you.
18017	50	2024-10-10 20:25:21	2024-10-10 20:26:19	149	7695	4052? Yeah, 4052. Are you not getting the announcement that there's an issue on 370 and I need it for you to take 270 south to Shady Glow? I can't do that. I'm already at the... I see that you can't do that. Yes, sir. I've made several announcements and sent out text messages. Before you passed the exit, you could have done that, sir, is what I'm saying. Did you not hear any of the messages or receive it on your clever? I did.
18117	15	2024-10-10 20:35:25	2024-10-10 20:35:45	149	7695	So I'm going the line to Travelle and there's major traffic and barely moving on 370 going towards Travelle. 10-4, sir. Thank you. 10-4. Copy.
18193	12	2024-10-10 20:40:44	2024-10-10 20:40:58	144	7700	That's a 10-4. I'll get back to you in a couple minutes to let you know when I push to be down at Silver Spring. 10-4. A 4-0-2-0 is going to be shot. The mechanic checked out. There's a leak down there.
18196	17	2024-10-10 20:41:01	2024-10-10 20:41:23	144	7700	All right, 10-4. When the eventually gets a bus, have them give us a call so we can put them back on the run. 10-4. Hey, hold on. I had her to move that bus around on Dixon because she was held up in the station, so I told her to take it around on Dixon. All right, 10-4. Thank you.
18245	2	2024-10-10 20:45:12	2024-10-10 20:45:13	144	7700	Whoa.
18299	3	2024-10-10 20:48:59	2024-10-10 20:49:01	145	7690	5317.
18257	3	2024-10-10 20:45:42	2024-10-10 20:45:46	144	7700	10-4, thank you. Thank you.
18183	13	2024-10-10 20:40:26	2024-10-10 20:40:42	144	7700	The replacement bus for 6004 will be 6007. They're pulling in the bridge chain parking right now. I'm going to reach out to them to see if they can do that trip southbound. 6007.
18171	1	2024-10-10 20:39:58	2024-10-10 20:39:59	144	7700	Central on level 1.
18255	15	2024-10-10 20:45:22	2024-10-10 20:45:39	144	7700	Go ahead, Ron. Ron 121, block 1127 is taking bus 5329. I told him to pick it up at 455 at Tacoma Station. Maybe a little bit late.
18280	3	2024-10-10 20:46:57	2024-10-10 20:47:06	144	7700	Essentially, Volvo 1.
18297	2	2024-10-10 20:48:46	2024-10-10 20:48:48	145	7690	5317.
18305	33	2024-10-10 20:49:09	2024-10-10 20:49:45	149	7695	Is the detour for if you're going towards Poolsville for the 76 also, or is it just going back, leaving from Shady Grove? It's actually just going to Shady Grove. There is no detour heading away from Shady Grove as, like you're saying, going to Poolsville. Those lanes are open. There's traffic going towards Pools, like, that way. All of the traffic is this way. The traffic is actually moving the opposite way, heading back to Shady Grove. Okay. Therefore.
18295	1	2024-10-10 20:48:41	2024-10-10 20:48:42	145	7690	5-3-1-7
18282	2	2024-10-10 20:47:08	2024-10-10 20:47:09	144	7700	Hold on.
18319	33	2024-10-10 20:50:39	2024-10-10 20:51:14	149	7695	I'm stuck on City Grove Road here. I mean, because I'm so late, I'll be leaving City Grove to travel right now. 10-4? That is a 10-4, sir. Just run it late. If it interferes with your meal break or your clear time, we will work it out at that time. 10-4, just continue your run as you normally do it. Thank you, sir.
18281	21	2024-10-10 20:46:40	2024-10-10 20:47:08	149	7695	Good afternoon, 5318. Go ahead with your message, sir. I just left the yard late and just trying to figure out my starting point. I got a bus late today. Was that due to no buses being on the yard or other issues? No buses.
18290	29	2024-10-10 20:47:12	2024-10-10 20:47:44	144	7700	Okay, I just spoke with the operator 6007 on the phone. She will do the 454 trip. So she'll probably get down to Silver Spring about 5.30 or so, at which time she'll switch for 6004. If you're back at the training center, please let the operator 6004 know about the switch. I will take the operator on Dixon, take it to Silver Spring Station. They can do the switch, okay? Thank you. All right, 10-4-6.
18286	11	2024-10-10 20:47:15	2024-10-10 20:47:28	149	7695	Pick it up at Medical Center to Wheaton. Pick it up at Medical Center at 507 Time Point to Wheaton. Channel 4. Thank you.
18358	1	2024-10-10 20:55:02	2024-10-10 20:55:03	145	7690	$40.90.
18365	23	2024-10-10 20:55:10	2024-10-10 20:55:38	145	7690	4090. Good evening, 4090. I can help you. Yeah, I'm stocking Shady Grove and 270. And I suppose my next week's got to be 455, so we'll just right now. 10-4, sir. When you get there, let us know.
18367	2	2024-10-10 20:55:40	2024-10-10 20:55:42	145	7690	Turn forward.
18578	16	2024-10-10 21:14:19	2024-10-10 21:14:37	149	7695	Okay, Central, just getting up here at Germantown. Copy. That is a 10-4. Just keep running. If it goes over your clear time, let us know and we'll have you fill out about your 10-4. Okay, copy.
18408	12	2024-10-10 20:59:56	2024-10-10 21:00:08	144	7700	So, I don't see a fire truck here, but there are a couple police here, but there's one lane getting by and it's just really slow.
18608	1	2024-10-10 21:17:30	2024-10-10 21:17:31	149	7695	$40.90.
18401	2	2024-10-10 20:59:40	2024-10-10 20:59:42	144	7700	Level 3, 4 to Central.
18566	4	2024-10-10 21:12:54	2024-10-10 21:12:57	145	7690	It's going to be 5331 at Glenmont. He's going to be waiting on you.
18520	25	2024-10-10 21:08:25	2024-10-10 21:08:59	145	7690	5331. Hey, go ahead, Hunt. Yeah, this bus is unsafe to operate. The seat cushion keeps sliding. It's not safe. Hey, Hunt, give me a quick favor. Give me a landline. Give me a landline real quick. 10-4.
18610	8	2024-10-10 21:17:34	2024-10-10 21:17:42	149	7695	Yeah, for 49 years, you're so all done. I'm here in the Shady Grove station. So I guess...
18501	15	2024-10-10 21:07:12	2024-10-10 21:07:33	145	7690	4125. We're at 4125. Good evening, Central. I'm getting ready to do that 70 to Milestone. Is there any detours on that 70? Because I know the traffic was backed up. That's a negative.
18568	2	2024-10-10 21:13:00	2024-10-10 21:13:02	145	7690	All right. Talk to you, Dan.
18415	9	2024-10-10 21:00:13	2024-10-10 21:00:24	144	7700	Actually, it's coming down to just one police officer here, so hopefully it'll be clearing up soon.
18417	2	2024-10-10 21:00:25	2024-10-10 21:00:26	144	7700	Alright, 10-4. Thanks, Debbie.
18504	15	2024-10-10 21:07:36	2024-10-10 21:07:54	145	7690	Can you repeat that, Central? That's a negative, sir. Just pull out your 70 as usual. It looks like some traffic is starting to clear out. So, normal routing. 10-4, good buddy.
18564	19	2024-10-10 21:12:29	2024-10-10 21:12:50	145	7690	4023. Hey, Derek, do me a favor. When you get to Grand Prix, I know that's when you're getting off. I need you to do me a favor. As soon as you get off of Grand Prix, could your dad head up there at Glenmont and do a bus switch for me? 10-4. What bus number?
18703	14	2024-10-10 21:27:28	2024-10-10 21:27:45	145	7690	5768. Go ahead, 5768. Due to the accident, my run number is 364. I'm just pulling out of Shady Grove.
18509	24	2024-10-10 21:07:57	2024-10-10 21:08:23	152	7730	Attention Gaithersburg operators, Gaithersburg operators. We are now resuming normal routing. Normal routing for the 71, the 73, the 74, the 76, the 78, the 79, 100, and the line. We are now resuming normal routing. 370 is back open.
18535	52	2024-10-10 21:09:26	2024-10-10 21:10:17	152	7730	Attention ride-on operators. Ride-on operators, it's time for your safety message of the day. Today is Thursday, October 10, 2024. Scan steering wheels. Always scan steering wheels of parked cars to see if the vehicle is occupied. An occupied vehicle presents two hazards. The person may either exit the vehicle or pull away from the curb. Steering wheels turned. Look for tilt lights to come on and exhaust coming from the tailpipe. If you cannot determine if the vehicle is occupied, treat it as occupied. Why do we do this? To take the task of the least resistance. Everyone please be safe out there. Central time is 510.
18585	2	2024-10-10 21:15:32	2024-10-10 21:15:34	147	7710	Central 4005.
18617	23	2024-10-10 21:17:46	2024-10-10 21:18:13	149	7695	I'm not understanding, sir. Are you finished for the day? Yes, I just let you know. I mean, I called him before because I don't make my last trip for the 100. Yes, so are you going to pull out that last trip? No, I'm done. Alright, 10-4.
18584	2	2024-10-10 21:15:22	2024-10-10 21:15:24	147	7710	Bye.
18714	5	2024-10-10 21:28:37	2024-10-10 21:28:43	145	7690	Okay, it's because I've already started the 100 to go up there.
18883	1	2024-10-10 21:43:10	2024-10-10 21:43:11	144	7700	Clear and forth.
18888	5	2024-10-10 21:43:23	2024-10-10 21:43:31	144	7700	It was just what we talked about, Onis. Thank you.
18640	12	2024-10-10 21:21:16	2024-10-10 21:21:30	144	7700	Center to Mobile 3, Senor Dominguez. I forgot. What's your car number so I can put that down? The vehicle number is 1515. Thank you, sir. Appreciate it.
18659	52	2024-10-10 21:22:45	2024-10-10 21:23:42	145	7690	This is a broke down vehicle in the left turn lane on Norbeck Road. I'm running late. I don't know what time I want to get to run the 41. You might want to get a coordinator or I don't know. But this vehicle is blocking the right lane to turn left. And I've been sitting there for the last 10 minutes. You make the left turn on Norbeck, correct? But there's two left turn lanes. Is he blocking both of the left turn lanes? The traffic is backed all the way up to 200. Trying to make it left. Okay, yeah. Just maneuver through there. And like I said, there's two left turn lanes. So I know traffic is backed up. Just kind of bear with it. Both lanes are blocked all the way up to Route 200. Only maybe six or seven cars are getting through the light.
18711	15	2024-10-10 21:28:15	2024-10-10 21:28:36	145	7690	Alright, do me a favor. Pick it up from Lake Forge for me. Can you do that? Pick the 55 up. Yeah, pick it up from Lake Forge for me.
18858	2	2024-10-10 21:41:26	2024-10-10 21:41:28	144	7700	Central level one.
18865	1	2024-10-10 21:41:55	2024-10-10 21:41:56	144	7700	Central level one.
18694	11	2024-10-10 21:26:44	2024-10-10 21:26:59	145	7690	40-23. 40-23. Hey, D, do me a favor. Disregard that bus switch. I was able to help the driver out. Disregard the bus switch at Glenmont for me. Thank you. That's all.
18882	1	2024-10-10 21:43:04	2024-10-10 21:43:05	144	7700	Corn.
18706	8	2024-10-10 21:27:56	2024-10-10 21:28:08	145	7690	10-4, I see. Do me a favor because you're supposed to pull out from Germantown at 5-30, correct? Correct.
18720	9	2024-10-10 21:28:46	2024-10-10 21:28:57	145	7690	Okay, so when you get out there, give me a call back then. When you get out there, if you're on your 100. Okay, 24.
18973	1	2024-10-10 21:52:50	2024-10-10 21:52:52	144	7700	Hello, Henry.
19028	6	2024-10-10 21:56:59	2024-10-10 21:57:11	144	7700	Oh, eight. Go ahead, eight. Alli, miki, Vila, nein.
18997	10	2024-10-10 21:54:40	2024-10-10 21:54:50	144	7700	Yeah, he's here to service every bus stop that's on his rent sheet. Unless he doesn't want to get paid, then maybe, you know, he would want to do that.
18994	20	2024-10-10 21:54:14	2024-10-10 21:54:37	144	7700	I'm over 8. Go ahead, 8. Yeah, I spoke to him a little bit, you know, beside, I spoke beside him. He said he was running really, really behind because of accident on 370. But I told him he needed to pick up people, not leaving the people.
19112	2	2024-10-10 22:04:20	2024-10-10 22:04:22	149	7695	4144.
18967	3	2024-10-10 21:52:39	2024-10-10 21:52:42	144	7700	My way to see a guy.
18884	2	2024-10-10 21:43:13	2024-10-10 21:43:15	144	7700	Could someone call me?
19116	2	2024-10-10 22:04:30	2024-10-10 22:04:32	149	7695	4144.
18986	16	2024-10-10 21:53:23	2024-10-10 21:53:40	144	7700	So apparently Maxie's in fallback mode, so we can call him on fallback, but that could be why his sign is not working. However, that does not excuse why he's not picking up passengers.
19003	25	2024-10-10 21:54:54	2024-10-10 21:55:20	144	7700	Yeah, 10-4. He's doing 55, but he put the bus out service. So he, I don't know if he's going to put it on service, but his destination sign is out service. But yeah, I see another 55 rugby is living right now, the college. I hope they pick up these people. 10-4.
18981	23	2024-10-10 21:52:54	2024-10-10 21:53:18	144	7700	Yeah, can you call bus 5844? He's right here, and he just made a ride on 355 from Shed Spears. And he's got passengers, but he's out of service. Destination site is out of service. He didn't pick up nobody right here by Walmart. 10-4.
19022	24	2024-10-10 21:55:58	2024-10-10 21:56:26	144	7700	Has a 6,002, 6,000, has a flash flash switch with me. Yes, sir. 6,007 switch with 6,004. And 6,004 is about to leave. She's deadheading back to the depot. All right, 10-4, thank you. The operator will log herself back in. I'll go ahead and take her now. 10-4, thank you.
19078	39	2024-10-10 22:00:34	2024-10-10 22:01:19	145	7690	Go ahead. I cannot log in. I cannot log in. My ID number 1723. My ID number 1723. My run number 343. My ID number 1723. My ID number 343. I cannot log in. 10-4. 10-4. I will get you logged on. I will get you logged on.
18947	31	2024-10-10 21:49:16	2024-10-10 21:49:52	149	7695	Yes, sir. Go ahead with your message, please. That is a 10-4. You're finished for the day once you get to Glenmont? Yeah, 10-4. Thank you for letting us know.
18989	2	2024-10-10 21:53:41	2024-10-10 21:53:42	144	7700	Let me tell them.
19012	3	2024-10-10 21:55:51	2024-10-10 21:55:56	144	7700	Central Mobile 1. Mobile 1?
19125	6	2024-10-10 22:05:14	2024-10-10 22:05:21	149	7695	i don't know what you just said sir but we are not allowed to do that
19129	14	2024-10-10 22:05:21	2024-10-10 22:05:39	145	7690	2037. Yes, sir. Now, do me a favor. Your desk said when you get to Bethesda Station, put your bus out of service and return to base once you get to Bethesda Station. 10-12. Copy.
19161	27	2024-10-10 22:07:49	2024-10-10 22:08:20	145	7690	41-45. Hey, Sam, I can help you. Yeah, I got a full bus. I see 40-22 pulling in. I don't see nothing but three people on this bus. He's going in the same direction I'm going in. I'm just going to drop off and I'm going to let him pick up. Drop off only, Sam. I'm going to let him know that you're dropping off only, all right? Drop off only. I'll let him know. Okay, 10-4, thank you.
20811	5	2024-10-11 01:17:05	2024-10-11 01:17:11	144	7700	Yeah, YouTube. What is that?
19157	10	2024-10-10 22:08:01	2024-10-10 22:08:11	144	7700	Róna Valdonabórið var liðst fiftífíð í Germantán.
19178	19	2024-10-10 22:08:51	2024-10-10 22:09:12	144	7700	I mean, it's no worries, because the person who was... Phone number one, maybe. Yeah, it's okay. The person will probably do it again, so he will get caught. No worries. Stephanie, I'm going to get him. I'm going to be right there next time. That's a 10-4.
19289	11	2024-10-10 22:18:24	2024-10-10 22:18:36	149	7695	Yeah, go ahead and pull out that 56 and then we'll revisit once you get to Lake Forest. 10-4? Yeah. 10-4. Thank you.
19122	32	2024-10-10 22:04:37	2024-10-10 22:05:10	149	7695	Yes, 4144. Yes, good afternoon, 4144. So when you were doing your 55 and you did not go through the college, so you didn't follow your run sheet. In fact, you not only didn't go through the college, you let the people off on the corner and they had to walk into the college. That is not allowed, sir. We do not do that. 10-4. What are you doing?
19164	17	2024-10-10 22:08:16	2024-10-10 22:08:34	144	7700	Okay, well, I'm looking at the room number, and he actually, yeah, he's doing 70, so I don't know why his bus would say that.
19186	17	2024-10-10 22:09:22	2024-10-10 22:09:40	145	7690	4022. Good evening, Central. Go ahead. Hey, 4022. Another 26 just left. He has a full bus, so he's going to drop off only, okay? So just pick the passengers up. That bus is going to drop off only. 10-4? 10-4, Central.
19255	42	2024-10-10 22:14:51	2024-10-10 22:15:40	145	7690	So you're right there, right underneath the underpass of University Boulevard, correct? Sure. Okay, you're on the side of the road, correct? Sure. Okay, Ebenezer, so you were in a crash. Nobody's on your bus. And is the other car still at the scene? Yeah, still on the scene. The only thing that he touches was his private mirror. There's no damage. It has an old damage. But he said, I hit his butt. I hit his car. The car, how does it hit? There's no mark or anything on my bus. Okay, just stand by for a coordinator and police. 10-4.
19285	25	2024-10-10 22:17:52	2024-10-10 22:18:17	149	7695	Yeah, Central, this is 5846. I'm on run 387. The block is 2225. I'm running 27 minutes late on 55 because of the accident on the 370. So I can pull out the 56 cilates, but I don't think I can pull out the 65. Turn 4.
19170	1	2024-10-10 22:08:45	2024-10-10 22:08:46	145	7690	40-22.
19155	18	2024-10-10 22:07:40	2024-10-10 22:07:58	144	7700	Mobile 8, go ahead. Yeah, mobile 8. So 4144 was actually doing the 70. So it was probably the bus that was in front of him that didn't service the college that dropped off the people. And unfortunately, I don't think you got that bus number.
19235	2	2024-10-10 22:14:15	2024-10-10 22:14:17	145	7690	5-3-5-0.
19173	1	2024-10-10 22:08:51	2024-10-10 22:08:54	145	7690	4022.
19181	2	2024-10-10 22:09:16	2024-10-10 22:09:17	145	7690	2022.
19202	1	2024-10-10 22:10:45	2024-10-10 22:10:46	145	7690	Let's finish.
19243	24	2024-10-10 22:14:23	2024-10-10 22:14:48	145	7690	Go ahead, Ebeneezza, what's going on?
19200	22	2024-10-10 22:10:14	2024-10-10 22:10:42	145	7690	5-0-5-3. 5-0-5-3. Hey, V, everything all right? I just saw you sitting there. I'm just making sure everything's okay with you. I pull out in about five minutes. 10-4. 10-4. 10-4. Be safe out there and let us know if you need anything.
19281	4	2024-10-10 22:18:01	2024-10-10 22:18:05	144	7700	Central Mobile 2. Mobile 2, get me a landline.
19576	25	2024-10-10 22:47:34	2024-10-10 22:48:03	149	7695	4145 Central. Go ahead, 4145. Yeah, I just arrived here at Glenmont. I cleaned about three minutes. I know I ain't going to make a silver spring in three minutes. Just let Eric know on the desk. I'll be writing the voucher once I get in. That's a 10-4, sir. Thank you. Be safe and have a good evening. Do the same. You do the same.
19691	3	2024-10-10 22:57:46	2024-10-10 22:57:49	144	7700	ERROR: TRANSCRIPTION_TIMEOUT
19698	3	2024-10-10 22:58:43	2024-10-10 22:58:47	144	7700	Please also hear. I didn't say this.
19928	11	2024-10-10 23:23:19	2024-10-10 23:23:32	149	7695	41-11. Hey, good afternoon, 41-11. Before you clear today, can you please see Supervisor Miracle? All right, careful. Thank you.
19689	3	2024-10-10 22:57:35	2024-10-10 22:57:40	144	7700	All right, I'm ten five. Ten four, ten four.
20071	5	2024-10-10 23:37:39	2024-10-10 23:37:45	149	7695	Okay, so, so I'll come to the end.
19849	3	2024-10-10 23:12:28	2024-10-10 23:12:32	144	7700	All right, we're done here. 24.
20076	9	2024-10-10 23:37:49	2024-10-10 23:37:58	149	7695	Sir, take your memory to 8.07, which is 30 minutes, and then you can pull your 26 out later.
20066	7	2024-10-10 23:37:16	2024-10-10 23:37:23	149	7695	All right, sir. Call me back at 807, and I'll put you on a time point.
20061	12	2024-10-10 23:36:50	2024-10-10 23:37:05	149	7695	Okay, sir, do you want to make, uh, you look like you're missing 16 minutes from your meal break. Do you want to fill out a voucher or do you want to finish your meal break? Uh, music.
20078	3	2024-10-10 23:38:02	2024-10-10 23:38:05	149	7695	Okay, thank you.
20055	15	2024-10-10 23:36:27	2024-10-10 23:36:44	149	7695	This is bus number 5362. I'm waiting for the traffic. I'm now coming to the range for the Germans. I'm missing a mid-break.
20073	18	2024-10-10 23:37:27	2024-10-10 23:37:49	149	7695	Tony? Take your mail big 2-8-0-7 and then pull your 26 out late. Bobby, man, got the, uh, calling party. Said, uh, him and his mother made it out after we started sparking.
20207	26	2024-10-10 23:53:43	2024-10-10 23:54:23	144	7700	Are you in New York City of East? No, I'm in Lake Forest. Okay, yeah, this guy's probably going to take a while to get there. So can you head down to City of East? Plus 5034 is coming in as a 53. He says one of his assigned panels is not secure. 5034. 10-4. 10-4, thank you. Mobile 7, you can stand down. This is mobile 6, so I'll take care of that assignment. 10-4. All right, 10-4, thanks, guys.
20291	4	2024-10-11 00:08:45	2024-10-11 00:08:49	144	7700	Well, we'll take the attention. Sentry 34 is good to go.
21355	10	2024-10-11 02:32:32	2024-10-11 02:32:43	144	7700	I'll move away, copy. I'm already by 7, but it's fine. We can share with 6. Careful.
20293	1	2024-10-11 00:09:12	2024-10-11 00:09:13	144	7700	Thanks for your help.
20204	1	2024-10-10 23:53:40	2024-10-10 23:53:41	144	7700	How was that?
20203	2	2024-10-10 23:53:33	2024-10-10 23:53:35	144	7700	Central Mobile 7.
20469	2	2024-10-11 00:31:08	2024-10-11 00:31:10	144	7700	More one.
20504	5	2024-10-11 00:35:29	2024-10-11 00:35:39	144	7700	I appreciate you. Have a good night.
20473	15	2024-10-11 00:31:13	2024-10-11 00:31:31	144	7700	Yeah, mobile 2 is coming back from up here. So can you help us out by checking out north to New Hampshire and South Hampton Drive? We're getting reports that there's a crash. We need to see if buses are able to get around or not. I'm on my way. Thank you.
20465	2	2024-10-11 00:31:00	2024-10-11 00:31:01	144	7700	Central level one.
20500	1	2024-10-11 00:35:24	2024-10-11 00:35:25	144	7700	Well, if I have a central
21328	5	2024-10-11 02:30:16	2024-10-11 02:30:27	144	7700	Well, it's 57-62. Is he supposed to be on the route?
21335	6	2024-10-11 02:30:48	2024-10-11 02:30:56	144	7700	Looks like he's just getting off right now. It's supposed to be dead, heading back to the depot. Okay, that's what I thought. Temple.
21339	7	2024-10-11 02:31:00	2024-10-11 02:31:08	144	7700	Go ahead, Perez. I'll be 10-7 for the remainder. You guys have a good night. 10-4. Appreciate it.
21354	18	2024-10-11 02:31:59	2024-10-11 02:32:25	144	7700	Hey, Mike, Mobile 7, could you transition over to 6 and then you and 8 can share 7? You and your other 6? Yeah, you and Mobile 8 can share 7. Simple. Appreciate it.
21588	3	2024-10-11 03:16:46	2024-10-11 03:16:49	144	7700	ERROR: TRANSCRIPTION_TIMEOUT
21649	2	2024-10-11 03:29:24	2024-10-11 03:29:28	144	7700	We'll wait.
21652	2	2024-10-11 03:29:41	2024-10-11 03:29:46	144	7700	I have good idea.
21774	2	2024-10-11 03:49:08	2024-10-11 03:49:10	151	7720	Everything is alright.
21651	7	2024-10-11 03:29:29	2024-10-11 03:29:38	144	7700	Go ahead, Ace. Ace, that's going to be 10-4 to remain in. 10-4? 10-4, Max. We appreciate you.
21769	12	2024-10-11 03:48:31	2024-10-11 03:48:43	151	7720	Central to the operator on block 2259, doing run 395. Again, Central's looking for the operator, currently doing block 2259, run 395. Please contact Central.
21773	10	2024-10-11 03:48:53	2024-10-11 03:49:07	151	7720	Hello, this is 4417. We're on 395. Yeah, 4417, you weren't being tracked, so I just wanted to check to make sure everything was okay.
21775	1	2024-10-11 03:49:13	2024-10-11 03:49:16	151	7720	All right, thank you.
22323	2	2024-10-11 05:30:10	2024-10-11 05:30:13	144	7700	Essentially according to Thompson.
22325	1	2024-10-11 05:30:15	2024-10-11 05:30:16	144	7700	All right.
22328	1	2024-10-11 05:30:28	2024-10-11 05:30:30	144	7700	Thank you.
22326	7	2024-10-11 05:30:18	2024-10-11 05:30:26	144	7700	All right, you go ahead and 10-7 for the remainder. It's about 138. I'm going to have a safe trip home. You can do the same.
22504	2	2024-10-11 06:10:32	2024-10-11 06:10:34	151	7720	Central bus 4117.
22506	2	2024-10-11 06:11:01	2024-10-11 06:11:02	144	7700	I'm sorry, I can turn around.
22467	6	2024-10-11 06:00:11	2024-10-11 06:00:19	144	7700	Alright, it's 2 o'clock in the morning, 3-9-10-7. Thanks for your help today and have a good evening. Thank you.
22746	1	2024-10-11 07:33:26	2024-10-11 07:33:31	147	7710	Well, thanks.
22509	7	2024-10-11 06:11:16	2024-10-11 06:11:23	144	7700	Okay, 10 for you. That was the last 46 for the evening. All right, yeah, well, just let me know when it comes in.
22513	3	2024-10-11 06:11:48	2024-10-11 06:11:53	144	7700	All right. It just pulled in. Have a good night.
22464	2	2024-10-11 06:00:00	2024-10-11 06:00:01	144	7700	And first of all of you, Amir.
22466	1	2024-10-11 06:00:08	2024-10-11 06:00:09	144	7700	Porn.
22503	14	2024-10-11 06:10:01	2024-10-11 06:10:22	144	7700	General Cordier Dominguez. Yes, sir. Your last plus 4021 just pulled in, so you're content for the remainder. Thanks for your help today, and sorry about the confusion earlier. All right, brother. I'll see you there.
22505	7	2024-10-11 06:10:51	2024-10-11 06:10:59	144	7700	I've been sitting out here waiting for 4117. The last bus that's come in so far is 4055.
22511	1	2024-10-11 06:11:26	2024-10-11 06:11:27	144	7700	All right, thank you.
22774	5	2024-10-11 07:46:09	2024-10-11 07:46:15	144	7700	All right, my friend. Take Jones 2. Jones 2, bitches. Thank you.
22779	6	2024-10-11 07:47:11	2024-10-11 07:47:17	144	7700	Calamari. How you doing? I don't think it's you though.
22507	8	2024-10-11 06:11:05	2024-10-11 06:11:13	144	7700	I said, I've been waiting out here for 41.17. I haven't seen it, but the last bus that did come in was 40.55.
22514	2	2024-10-11 06:11:53	2024-10-11 06:11:55	144	7700	You too. Thank you. Have a good evening.
22780	2	2024-10-11 07:47:22	2024-10-11 07:47:26	144	7700	Yes, no, is it good?
22747	11	2024-10-11 07:33:35	2024-10-11 07:33:47	147	7710	I got you loud and clear, Mr. Lewis, but you won't fall back. Yeah, I was trying to check something.
22778	4	2024-10-11 07:46:56	2024-10-11 07:47:01	144	7700	Good morning, Central. This is Telemark.
22781	8	2024-10-11 07:47:29	2024-10-11 07:47:37	144	7700	To show proof. Internet will take out 1677 and I'm using myself. 10-4.
22769	2	2024-10-11 07:45:40	2024-10-11 07:45:41	144	7700	Oh, thank you.
23002	15	2024-10-11 08:57:00	2024-10-11 08:57:15	144	7700	Baker, talk to me. Talk to him all. Uh, vehicle 1515. Customs fail. 10-8. Let me know what zone you want me in.
22782	12	2024-10-11 07:47:41	2024-10-11 07:47:54	144	7700	1677, using your sales, 10-4, 8-0-8. 10-4.
22771	7	2024-10-11 07:45:50	2024-10-11 07:45:57	144	7700	Welcome back, Jose. Hey, good morning, good morning. I'm Teddy with 1695.
23004	5	2024-10-11 08:57:24	2024-10-11 08:57:29	144	7700	Today take zone 3. Zone 3D.
23022	9	2024-10-11 09:04:41	2024-10-11 09:04:51	144	7700	The 710, welcome in today, my friend. Yeah, yeah. 8226, personal sale.
22824	19	2024-10-11 07:58:31	2024-10-11 07:59:00	144	7700	Frank Central. Good morning to you, sir. Hey, good morning, sir. How are you today? I've got vehicle 7143, personal cell today. Okay, Mr. Price, take zone 4, please. Zone 4, copy.
23061	3	2024-10-11 09:13:56	2024-10-11 09:14:00	144	7700	ERROR: TRANSCRIPTION_TIMEOUT
23095	8	2024-10-11 09:23:55	2024-10-11 09:24:06	144	7700	Hey, my favorite coordinator. Good morning. 10-8. 12-20, personal sale.
23020	2	2024-10-11 09:04:36	2024-10-11 09:04:39	144	7700	Tell us in the central.
23024	4	2024-10-11 09:04:58	2024-10-11 09:05:03	144	7700	Take your favorite zone. One.
23052	2	2024-10-11 09:11:29	2024-10-11 09:11:31	144	7700	Clear to central.
23054	12	2024-10-11 09:12:00	2024-10-11 09:12:22	144	7700	All right, Rodriguez, 6-0-6. 7-6-10-4. Mobile 1, go ahead. Mobile 1. Hit the button, 9-6. OK, drop it, 10-4.
22971	8	2024-10-11 08:46:31	2024-10-11 08:46:38	145	7690	Good morning, sir. When you get to Shady Grove, look for a county vehicle to relieve you. The regular operator is going to pick up their run.
23033	23	2024-10-11 09:06:20	2024-10-11 09:06:52	144	7700	Hello? Yes, go ahead. I said 82-26 personal sale. And I responded. Your favorite zone. Didn't come through. Okay. Take your time. Let me tell you. Your favorite zone. Zone 1.
23034	4	2024-10-11 09:07:02	2024-10-11 09:07:05	144	7700	Mobile 1, give mobile PM1 landlines.
23006	3	2024-10-11 08:57:33	2024-10-11 08:57:36	144	7700	ERROR: TRANSCRIPTION_TIMEOUT
23013	24	2024-10-11 09:00:41	2024-10-11 09:01:11	149	7695	1493 is central. Senor Milton, good morning to you. Good morning to you. Maybe I pressed the wrong button. I didn't mean to. Sorry about that. Okay, so nothing important. Well, you have a good Friday then. Have a lovely weekend. Gracias.
22970	10	2024-10-11 08:46:15	2024-10-11 08:46:30	145	7690	4085. Good morning, 4085. If you can't hear me, when you get to Shady Grove, look for a county vehicle to relieve you. Can't hear you.
22972	2	2024-10-11 08:46:40	2024-10-11 08:46:44	145	7690	Probably.
23053	10	2024-10-11 09:11:43	2024-10-11 09:11:58	144	7700	Good morning, Kevin. I'm 10-8. Vehicle is 2651. Personal 5114.
23094	2	2024-10-11 09:23:49	2024-10-11 09:23:51	144	7700	That works for Sancho.
23107	18	2024-10-11 09:26:15	2024-10-11 09:26:37	144	7700	Mr. L.A. Cozina. Mobile 8? Correct. Mobile 8, go. Salima, are you in Germantown Transit? 10-4. I help on 270 Southbound. I'm going back to the depot right before Watkins Mill. You'll see 5843 Broadtown.
23184	6	2024-10-11 09:48:54	2024-10-11 09:49:00	144	7700	Yeah, you said 10-8. That's all I heard. Come on, boo, thanks.
23239	3	2024-10-11 09:57:00	2024-10-11 09:57:02	149	7695	4081, 4081.
23096	8	2024-10-11 09:24:10	2024-10-11 09:24:24	144	7700	All right, Harry. Take your favor and go. All set. Copy that.
23146	2	2024-10-11 09:39:19	2024-10-11 09:39:21	145	7690	If not...
23205	8	2024-10-11 09:52:26	2024-10-11 09:52:34	145	7690	Good morning, 5338 Radio Check Loud and Clear. Have a safe, wonderful day. And please do not forget to do that post at the end of your work day.
23242	2	2024-10-11 09:57:07	2024-10-11 09:57:09	149	7695	4081, 4081.
23272	36	2024-10-11 09:59:57	2024-10-11 10:00:44	149	7695	4135. Good morning, 4135. What's going on, Odati? I have a problem with my bus. The check engine light has been on and the stop engine light popped out twice, cutting the engine off, so I think I need a bus switch. The bus is moving. If not, we may have to escort you back to the depot.
23298	3	2024-10-11 10:03:07	2024-10-11 10:03:10	151	7720	ERROR: TRANSCRIPTION_TIMEOUT
23000	2	2024-10-11 08:56:52	2024-10-11 08:56:54	144	7700	Beg it to Central.
23106	2	2024-10-11 09:26:04	2024-10-11 09:26:08	144	7700	I'm over 8.
23181	1	2024-10-11 09:48:31	2024-10-11 09:48:33	144	7700	She brought it to Central.
23225	39	2024-10-11 09:53:42	2024-10-11 09:54:28	151	7720	Uh, let me know. I can turn around and stop by 61 down here. Uh, where are you exactly at this time? Uh, I'm just heading on 270 right now. 370, uh, I'm at the Frederick Road, Rockville, uh, exit. Well, can, uh, you want to pick it up, uh, somewhere right there on, uh, I don't know much, uh, exit on Clouffer Road? And, uh, stuff on Great Seneca, if you want to pick it up. That's up to you folks, uh, just let me know. Alright, uh, let's do that then. 10-4.
23248	15	2024-10-11 09:57:43	2024-10-11 09:58:00	149	7695	5847, go ahead. 847, when you get to the depot, look for 5838 on lane 32. 5838, lane 32. It should be running. 10-4.
23255	3	2024-10-11 09:59:13	2024-10-11 09:59:16	145	7690	We'll do a thank you as well.
23090	2	2024-10-11 09:21:28	2024-10-11 09:21:31	149	7695	Yeah, I know.
23091	12	2024-10-11 09:21:33	2024-10-11 09:21:49	149	7695	4081, good morning. Thanks, sir. I've got to return to base this thing. The bus is making an awful lot of noises here. I've got to bring it back. It's really bad. All right. Okay, copy.
23104	11	2024-10-11 09:25:43	2024-10-11 09:25:56	149	7695	Please, could you send the coordinator or someone? Are you broke down right before Watkins, ma'am?
23139	3	2024-10-11 09:38:08	2024-10-11 09:38:10	144	7700	Mobile 8. Mobile 8.
23203	5	2024-10-11 09:52:17	2024-10-11 09:52:22	151	7720	I'm going to Germantown right now, but I just wanted to call you guys and let you know where I'm at.
23209	17	2024-10-11 09:52:26	2024-10-11 09:52:43	151	7720	You're supposed to be doing a 54 this time. Let's see. Uh, 54. I just got to, uh, yeah, that's the gentleman down for your sixth study, your next trip.
23211	2	2024-10-11 09:53:06	2024-10-11 09:53:08	145	7690	047.
23222	14	2024-10-11 09:53:52	2024-10-11 09:54:12	145	7690	You run number, please? Run number 2727. 10-4, Mr. Ward. Have a safe, wonderful day. I love you and us and us. I find out what's going on, okay? All right, 10-4. Thanks, love. You have a good one, too.
23093	13	2024-10-11 09:23:33	2024-10-11 09:23:49	149	7695	4132 Central. Good morning, 4132. Copy your line clear. Have a safe day. Time is 523. Copy that. 10-4. Yes, sir.
23122	13	2024-10-11 09:33:40	2024-10-11 09:33:55	149	7695	Good morning, thank you. This is by 4041. 4042, check. 4041. Good morning. You're barely coming through. The time is 533. I hope you have a good day. Thank you.
23130	1	2024-10-11 09:36:24	2024-10-11 09:36:25	144	7700	Thank you.
23178	10	2024-10-11 09:46:39	2024-10-11 09:46:50	144	7700	Oh, I'm calling them now.
23188	11	2024-10-11 09:49:13	2024-10-11 09:49:28	144	7700	Uh, 10-9-9-7. 8-3-0-9. Go ahead, um, 8-5, zone 5. 10-4-5.
23194	3	2024-10-11 09:51:01	2024-10-11 09:51:04	144	7700	All right, what's this status, Salima?
23218	31	2024-10-11 09:53:11	2024-10-11 09:53:46	145	7690	Good morning, 5047. How can I help you? Yeah, so I'm going to be leaving the yard due to a bus problem. I was on bus 5059. I had to switch out onto bus 5047. So I'm trying to log in. It's not allowing me to log in. 10-4? 10-4. Let me have your ID number and your run number, and then I'll check if you're still logged on to 59. Of course. It's 1069. Thank you.
23232	47	2024-10-11 09:54:51	2024-10-11 09:55:44	144	7700	Mobile 8, what's the status? Are you heading to the depot with the operator? Yeah, Mobile 8 and 9. Were you guys able to transfer the passenger to the next 100? Yeah, I was calling to tell you, but the line was very busy. So they have gone about five minutes ago. As you said, the bus will get here in FF 446. It was here at that time, and they were all transferred. They are gone. Now we are waiting for shop. All right, copy that. All right. When shop gets here, I will take the operator back with the people, 10-4. Sounds good.
23103	25	2024-10-11 09:25:09	2024-10-11 09:25:40	149	7695	5-8-4-3. 5-8-4-3. Good morning. This is bus 10-4-3. The water is flowing in the back. The check engine is alarming. But you're still moving, correct? I mean, is the bus running? Still running? Yes. Run out. Can that?
23108	1	2024-10-11 09:26:41	2024-10-11 09:26:42	144	7700	Thank you.
23167	15	2024-10-11 09:45:45	2024-10-11 09:46:06	144	7700	Mobile 8 transfer. Go ahead, Mobile 8. You told him, right? He will stop in front of us, right? Yes, sir. I believe it was bus 4027 is going to stop in front of you.
23173	4	2024-10-11 09:46:30	2024-10-11 09:46:35	145	7690	4124, good morning, 4124.
23174	27	2024-10-11 09:46:09	2024-10-11 09:46:36	144	7700	Thank you very much. You need extra help there? 5843. There is no life in it. Can we leave that bus there and call the shop? Yeah, call shop 5843. There is nothing we can do.
23185	2	2024-10-11 09:49:04	2024-10-11 09:49:05	144	7700	Stand by, mobile 8.
23215	3	2024-10-11 09:53:33	2024-10-11 09:53:38	144	7700	ERROR: TRANSCRIPTION_TIMEOUT
23223	1	2024-10-11 09:54:14	2024-10-11 09:54:15	145	7690	10-4-3, be safe.
23240	3	2024-10-11 09:56:59	2024-10-11 09:57:02	144	7700	ERROR: TRANSCRIPTION_TIMEOUT
23245	4	2024-10-11 09:57:18	2024-10-11 09:57:24	149	7695	4081-4081-4081.
23257	3	2024-10-11 09:59:19	2024-10-11 09:59:22	145	7690	And forth, I would be safe.
23092	3	2024-10-11 09:21:51	2024-10-11 09:21:55	149	7695	Just inform you guys. Thank you.
23187	2	2024-10-11 09:49:09	2024-10-11 09:49:11	144	7700	I got 8309.
23258	12	2024-10-11 09:59:25	2024-10-11 09:59:39	144	7700	4135, 4135.
23127	6	2024-10-11 09:34:16	2024-10-11 09:34:22	144	7700	Mobile 6, I'm 10-5 with the
23138	6	2024-10-11 09:37:45	2024-10-11 09:37:51	144	7700	Tell him I had any passengers on that bus. I got another 100 coming behind.
23165	69	2024-10-11 09:44:22	2024-10-11 09:45:41	149	7695	Good morning. This is 5847. I don't need a bus switch. This bus don't have any heat. I hope for that. Do me a favor. Turn the heat off and then shut the bus off. Restart the bus and then turn the heat back on. See if that helps. It's not when you get to Shady Grove. Go to the deep end and get a switch. I already did that. I did that way back down the road and it didn't work. And I see in the DVR, like previous sheets before, that someone had rode up that they didn't have any heat, but they never turned the bus in, I guess. All right. Okay. When you get to Shady Grove, they had to the depot. I don't have no standby to bring you a bus. Okay. Well, is there any way possible that you can have them to have a bus already started and running and with some heat because I'm freezing cold. It's really cold. I can call the front desk and see if they can do that for you, okay? 10-4. It's somebody in the yard. All right. Okay. Okay. Then I guess you can call me back and let me know what bus I'm taking so that I can know which one is already heated. Sure. 10-4. Thank you.
23197	4	2024-10-11 09:51:28	2024-10-11 09:51:32	145	7690	Good morning, 5366. Good morning. How can I help you?
23256	28	2024-10-11 09:58:48	2024-10-11 09:59:18	144	7700	Yeah, it's mobile 7. You want me to go pick up the operator? No, are you late for it? Yeah, I'm hitting the EFO. Just in five minutes out. All right, look for 4135. Trying to call a few, but don't have no idea what he needs. Radar's not communicating. He'll leave out late for us, 606 on the 101.
23129	15	2024-10-11 09:34:26	2024-10-11 09:34:42	144	7700	Yeah, yeah, 10-5 with 5-8-4-3. Okay, uh, tell him to see if you can get the bus running again. Apparently he shot down there with no warning lights. Thanks, Paul. I'll let you know.
23148	5	2024-10-11 09:39:23	2024-10-11 09:39:30	145	7690	Good morning. Disregard, okay? Have a safe one.
23152	54	2024-10-11 09:41:12	2024-10-11 09:42:16	144	7700	Mobile 8, Central. Go ahead, Mobile 8. We have a lot of passengers in the bus. And please tell any bus that is going to Shady Grove to stop in front of our own bus. And then pick up the passengers. Before I got here, 2 passed the broken down bus. Turn 4. Make sure you tell him to stop in front of the bus, not behind.
23162	4	2024-10-11 09:43:36	2024-10-11 09:43:40	145	7690	4124, good morning 4124.
23199	4	2024-10-11 09:51:39	2024-10-11 09:51:43	145	7690	5366. Send you to bus 5366. Good morning.
23201	12	2024-10-11 09:51:48	2024-10-11 09:52:04	151	7720	What run are you on? Give me the run number so I can look at it. Give me the run number. The run number is 253. The block is 2053.
23212	30	2024-10-11 09:52:47	2024-10-11 09:53:22	151	7720	My first run is a 74. Yeah, that's almost ended. So then you head back to Germantown once again, right for your 61? I can go straight to Germantown. That's where I'm going right now, but I can do the 61. No problem. No, then you'll be late for your 61. That's fine. That's a nice trip. Okay, do you want me to just wait to start the 61 up there? Thank you.
23160	37	2024-10-11 09:42:43	2024-10-11 09:43:28	149	7695	This is 4027. Go ahead. 4027. Are you about to do a 100 to Shedigraw? That's a 10-4. I'm going to need you to start on 270. I got a broken down bus. You'll see it right before Watkins Mill on 270 southbound. I need you to park your bus in front of his bus so we can transfer his passenger onto your bus. Okay, 10-4. Thank you. You're welcome. Have a nice day. You as well.
23163	2	2024-10-11 09:43:49	2024-10-11 09:43:51	145	7690	Enter the bus for 124.
23183	8	2024-10-11 09:48:40	2024-10-11 09:48:52	144	7700	Mr. Sobriety, what's up, buddy? Yeah, I'm all right. Ten-E? Good evening.
23202	5	2024-10-11 09:52:18	2024-10-11 09:52:23	145	7690	533-8-Gumano Control, radio check please.
23208	3	2024-10-11 09:52:36	2024-10-11 09:52:39	145	7690	Thank you.
23254	10	2024-10-11 09:59:00	2024-10-11 09:59:11	145	7690	Good morning, 4076 radio chair. Good morning, Mr. Prill. Your radio chair is loud and clear at last 4076. Have a safe, wonderful day.
23259	1	2024-10-11 09:59:41	2024-10-11 09:59:42	144	7700	Copy that.
23333	3	2024-10-11 10:09:48	2024-10-11 10:09:52	144	7700	My boy, the chopper's not there yet.
23198	31	2024-10-11 09:51:05	2024-10-11 09:51:43	151	7720	This is bus 5765. Do you copy? 756. Yes, I copy your fallback. I had to turn on my bus, get a new bus, 19 minutes behind on my schedule now. What do you want me to do? Are you at the end of the trip or are you in the middle of me? I can't track you with no GPS. I never started a trip. I had to turn around and go back. Thank you.
23244	4	2024-10-11 09:57:18	2024-10-11 09:57:22	145	7690	5366, good morning, 5366.
23251	3	2024-10-11 09:58:42	2024-10-11 09:58:45	144	7700	No, well, it's seven.
23321	20	2024-10-11 10:07:30	2024-10-11 10:07:54	144	7700	But the bus won't stay running? Can we nurse it back or negative? Yeah, it'll stay running. At least it's running now, so. See if you can follow back to the people, then run now with the other bus up in Jonathan.
23260	6	2024-10-11 09:59:43	2024-10-11 09:59:49	145	7690	5366. Good morning, 5366. How can I help you? 5366.
23377	12	2024-10-11 10:14:45	2024-10-11 10:15:00	145	7690	Hi, 10-4, 5-0-3-7, radio check. Good morning, radio check is loud and clear on the 50-37. Have a safe, wonderful day. Thank you, too, 10-4.
23476	12	2024-10-11 10:29:13	2024-10-11 10:29:25	144	7700	10-4, Shady Grove Hospital. Yeah. It's right there on Medical Center Drive and Brush Yard. 56 and the 43.
23319	14	2024-10-11 10:07:09	2024-10-11 10:07:27	144	7700	Yeah, you want me to try to take him back to the depot? Yeah, what's wrong with the police? Yeah, what's the deal with? Check engine light off. Stop engine light coming off.
23388	30	2024-10-11 10:15:25	2024-10-11 10:16:04	144	7700	Mobile A, Mr. R. Cosima. Mobile A, go. Are you guys still waiting on the shop? We are still waiting for shop. They are not here yet. Is the bus on the shoulder? I mean, do you have to stay there? Yes. We put the triangle and it's on the shoulder. You want us to leave the bus here? Yeah, if it is on the shoulder, yeah, take the operator back. Okay. I'm taking him back to the depot. Simple. Thank you.
23463	12	2024-10-11 10:27:29	2024-10-11 10:27:44	145	7690	Good morning, 4-0-0-3. Radio chat. Good morning, Ms. Dawkins. Radio ticket loud and clear on bus 4-0-0-3. Have a safe, wonderful day.
23470	52	2024-10-11 10:27:32	2024-10-11 10:28:34	149	7695	Is it possible that you can make the right turn? 10-4. If you were able to go to the right and go to 28 Key West and make a left and then make another left on Darnestown like the 56 and come down again on Darnestown. I'm just reporting the accident. It has not yet blocked up. The intersection for me to get through. But I'm assuming once the emergency EMTs and things get here, it may be blocked when I come back. But right now it's not blocked. I am able to get through. I just wanted to report the accident that I have emergency. All right.
23503	7	2024-10-11 10:33:57	2024-10-11 10:34:05	144	7700	We got bus 4078. Where do you want him to pick it up?
23515	11	2024-10-11 10:34:43	2024-10-11 10:34:59	144	7700	Over seven. Go ahead, sir. Forty-seventy-two. Then you're going to pick it up at Metal Center. Forty-seventy-two. That's a copy. Thank you, Melvin, sir.
23324	5	2024-10-11 10:07:57	2024-10-11 10:08:04	144	7700	Guys, I'm careful. Um, copy that.
23382	2	2024-10-11 10:15:14	2024-10-11 10:15:16	144	7700	I'm over. Hey.
23460	10	2024-10-11 10:27:14	2024-10-11 10:27:24	149	7695	24, I can't make that turn. You may have to make, can you make the right turn?
23474	15	2024-10-11 10:28:53	2024-10-11 10:29:12	144	7700	Hey, Rodriguez, do me a favor. Can you go up there by Chitty Grove, Chitty Grove, Seven Day Adventist Hospital, Medical Center Drive, and see if that's going to affect the route?
23510	7	2024-10-11 10:34:24	2024-10-11 10:34:32	144	7700	Pick it up at 355 and Shady Grove Road. Yes, sir.
23511	2	2024-10-11 10:34:37	2024-10-11 10:34:38	144	7700	Okay, thank you.
23308	3	2024-10-11 10:04:38	2024-10-11 10:04:41	144	7700	7-10-5 with 4135.
23328	40	2024-10-11 10:08:05	2024-10-11 10:08:52	149	7695	This is 4038. 4038. I need a bus switch. I got check engine alarms going off. So this bus is going to break down any minute. All right, call me when it breaks down. Right now, the majority are breaking down. So where are you right now? I'm going 64, Strawberry Nose, Montgomery Village. Are you going to the village? I'm going to make it to the village and call me when you make it there so I can send the coordinator to pick you up. Careful.
23464	3	2024-10-11 10:27:46	2024-10-11 10:27:49	145	7690	10-4, thank you. Likewise.
23500	4	2024-10-11 10:33:50	2024-10-11 10:33:56	144	7700	Go ahead, mobile 8.
23317	1	2024-10-11 10:07:05	2024-10-11 10:07:06	144	7700	Well, sir.
23452	3	2024-10-11 10:26:39	2024-10-11 10:26:42	149	7695	2139.
23477	2	2024-10-11 10:29:28	2024-10-11 10:29:32	144	7700	Thank you.
23507	14	2024-10-11 10:34:08	2024-10-11 10:34:22	144	7700	I tell him he can pick it up at 46. Sheddy Grill, right there on 355 in Sheddy Grill. He can pick up the 59 going to Rockville.
23440	21	2024-10-11 10:24:10	2024-10-11 10:24:36	144	7700	Mobile 7. All right, Mobile 7. Looks like you guys made it to the depot. Good job. Great job. 10-4. I'll hit you back with the last number. 10-4. Tell the operator to head to Medical Center. The next year doesn't leave until 7 or 2, I believe. Copy that.
23578	1	2024-10-11 10:42:44	2024-10-11 10:42:45	144	7700	Go Mautix!
23456	24	2024-10-11 10:26:45	2024-10-11 10:27:12	149	7695	4139, 4139. Yes, I'm on Medical Center Drive and Great Seneca Parkway. Just an accident at this intersection. Also, you could get some emergency help out here for the drivers. All right, so you cannot make the left turn right there on Great Seneca.
23577	1	2024-10-11 10:42:38	2024-10-11 10:42:39	144	7700	12 and 6 to Central.
23579	15	2024-10-11 10:42:48	2024-10-11 10:43:03	144	7700	I'm 10-5 at Medical Center Drive in Great Seneca. There is an accident. They haven't blocked any of the roads yet, but they might have to block it once the tow truck is here. I'll just stick around.
23557	17	2024-10-11 10:39:23	2024-10-11 10:39:41	144	7700	All right, the operator that had no heat on her bus blocked 2050, I believe. So the bus that she was assigned back in the yard did not have no heat as well. So I gave her another bus, 4083.
23580	2	2024-10-11 10:43:06	2024-10-11 10:43:08	144	7700	So far, sir. Thank you.
23562	20	2024-10-11 10:39:44	2024-10-11 10:40:09	144	7700	Is she there yet? Well, I guess you gave it to her. She said 483. Okay. 10-4. Give her about another 10 minutes. She had to use the restroom. What would you like her to pick it up when she's finished her 10-7? Let me go back to her run.
23568	9	2024-10-11 10:40:58	2024-10-11 10:41:08	144	7700	I'm almost there, and I haven't ever figured out about Clapper and Martini at 71. Clapper and Martini. Careful.
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.schema_migrations (version, inserted_at) FROM stdin;
20240717002537	2024-10-09 05:13:40
20240812021752	2024-10-09 05:13:40
20240815195644	2024-10-09 05:13:40
\.


--
-- Data for Name: spatial_ref_sys; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spatial_ref_sys (srid, auth_name, auth_srid, srtext, proj4text) FROM stdin;
\.


--
-- Data for Name: geocode_settings; Type: TABLE DATA; Schema: tiger; Owner: postgres
--

COPY tiger.geocode_settings (name, setting, unit, category, short_desc) FROM stdin;
\.


--
-- Data for Name: pagc_gaz; Type: TABLE DATA; Schema: tiger; Owner: postgres
--

COPY tiger.pagc_gaz (id, seq, word, stdword, token, is_custom) FROM stdin;
\.


--
-- Data for Name: pagc_lex; Type: TABLE DATA; Schema: tiger; Owner: postgres
--

COPY tiger.pagc_lex (id, seq, word, stdword, token, is_custom) FROM stdin;
\.


--
-- Data for Name: pagc_rules; Type: TABLE DATA; Schema: tiger; Owner: postgres
--

COPY tiger.pagc_rules (id, rule, is_custom) FROM stdin;
\.


--
-- Data for Name: topology; Type: TABLE DATA; Schema: topology; Owner: postgres
--

COPY topology.topology (id, name, srid, "precision", hasz) FROM stdin;
\.


--
-- Data for Name: layer; Type: TABLE DATA; Schema: topology; Owner: postgres
--

COPY topology.layer (topology_id, layer_id, schema_name, table_name, feature_column, feature_type, level, child_id) FROM stdin;
\.


--
-- Name: calls_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.calls_id_seq', 38098, true);


--
-- Name: talk_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.talk_groups_id_seq', 201, true);


--
-- Name: topology_id_seq; Type: SEQUENCE SET; Schema: topology; Owner: postgres
--

SELECT pg_catalog.setval('topology.topology_id_seq', 1, false);


--
-- PostgreSQL database dump complete
--

