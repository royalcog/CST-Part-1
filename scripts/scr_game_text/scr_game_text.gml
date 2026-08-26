// scr_text_shake(23, 28); -> Shake the letters between (and indcluding) x and y
// scr_text_color(23, 28, color, color, color, color); -> Turn the letters between (and indcluding) x and y different colors
// scr_text_face_spr(LEFT, spr_noelle_left_happy); -> Turning a sprite a direction (4-directional only)
// scr_obj_spawn_after_textbox(obj_desscircle, 680, 215, "Instances"); -> Spawning an object after the full textbox is done
// scr_obj_sprite_after_textbox(obj_dess, spr_dess_intro_body, false, snd_appear, 0.7); -> Sprite animation after textbox is done
// scr_obj_sprite_after_textbox_delayed(obj_dess, spr_dess_drool, true, 60); -> Same as above, but with a delay
// scr_text_speaker_shake(.5, 1); -> Shake the speaker during the line of text
// scr_text_cutoff_slow(11, 11, 0.1); -> Slows down the text, and cuts it off at letter x

/// @param text_id
function scr_game_text(_text_id)
{
	switch (_text_id)
	{
		case "self_1":
			scr_text("* Hey, Lancer!|* How's Castle Town been since we left?", "susie", 7);	
				scr_char_move_on_page(obj_susie, spr_susie_walk_up, true, 0, -20, .2, 90);
				scr_obj_sprite_on_page_delayed(obj_lancer, spr_lancer_down, false, 0, 45);
				scr_obj_sprite_on_page_delayed(obj_susie, spr_susie_walk_up, false, 0, 90);
			scr_text("* Incredible!", "lancer", 8);	
			scr_text("* ...Okay.", "susie", 10);	
			scr_text("* How's", "susie", 2);
				scr_text_cutoff_skip(7);
			scr_text("* Incredible!", "lancer", 8);	
				scr_text_slow(.2);
			scr_text("* ...", "susie", 3);
			scr_text("* Hey, um...", "susie", 0);
			scr_text("* I know it's probably not the BEST idea, but...", "susie", 13);
			scr_text("* I was thinking you should, uh...", "susie", 10);
			scr_text("* Yes?", "lancer", 2);	
			scr_text("* You should probably go... talk to your dad?|* See how he's doing?", "susie", 3);
			scr_text("* With everything that's happened, we kinda forgot he's still here, so...", "susie", 12);
			scr_text("* Maybe go do that?|* Or not?", "susie", 20);
			scr_text("* Do you wanna come?", "lancer", 1);
			scr_text("* Uh...", "susie", 25);
			scr_text("* Not... really?", "susie", 20);
			scr_text("* Anyways, I need to go talk to Ralsei about something, so...", "susie", 7);
			scr_text("* See you later?", "susie", 21);
			scr_text("* You bet!", "lancer", 2);
			scr_text("* Cool.", "susie", 2);
				scr_char_move_after_textbox(obj_susie, spr_susie_walk_right, true, 3, 0, .8, 20);
				scr_char_move_after_textbox(obj_susie, spr_susie_walk_up, true, 0, -20, .3, 90);
				scr_obj_sprite_after_textbox_delayed(obj_susie, spr_invischaracter, false, 150);
		break;
		
		case "self_2":
			scr_fade_warp_with_music(rm_one, 240, sng_empty);

		break;
		
		case "self_3":
			scr_text("* ...", "king", 5);
			scr_text("* Footsteps.", "king", 0);
			scr_char_move_after_textbox(obj_lancer, spr_lancer_right, false, 30, 0, .2, 100);
		break;
/*
Lancer: Hi Dad!
King: ...
King: My son.
Lancer: Just checking in on you!
King: Why have you not come to visit sooner?
Lancer: Adventuring!
King: ...With the Lightners, I presume?
Lancer: Yeah! They’re great!
King: ...
Lancer: I don’t even do any of the walking! It’s...
Lancer: Incredib (smug)
King: Enough.
Lancer: ...
King: You still do not get it, do you?
King: These ‘heroes’ you spend time with. They are not ‘heroes’.
King: I wouldn’t even classify them as ‘good’.
Lancer: What... What do you mean?
King: They are poisoning your mind, my son.
King: Promises of freedom and friendship just so they can use them in their own sick plans.
King: ...
King: I really wish you came to see me sooner.
Lancer: I thought you were gonna be upset when I saved the Lighters.
Lancer: And when we...
King: And I was. But now I am not.
King: And unlike the heroes, I HAVE changed for good.
King: While they have been off sealing other worlds...
King: I have been here. Self-reflecting on my actions.
King: I have seen the error of my ways, and what my actions have inflicted upon my people.
King: And for that, I am sorry.
Lancer: That’s great, Dad! Let me go tell Susie
King: I need a favor from you, Lancer.
Lancer: ...Yeah?
King: I need you to release me from here.
Lancer: ...
Lancer: I don’t know if I can do that, Dad
King: Listen to my words.
King: The heroes are planning something. 
King: They keep bringing up evil parts of their plan whenever they come to taunt me in this prison.
King: I understand you are friends with them now, so I will not force you to fight with them.
Lancer: But won’t you
King: I will not engage either. Do not worry.
Lancer: ...
Lancer: I don’t know, Dad.
Lancer: How do I know you won’t just attack them when you get out?
King: I give you my word, Lancer.
Lancer: ...
Lancer: Dad, you were gonna...
King: As I told the heroes, it was a bluff so they would concede. I would have never harmed you.
Lancer: You...
King: ...
King: If you are truly worried about what I will do,
King: At least let me out briefly.
King: Let me stretch my legs around here a little.
King: Then you may return in a bit and I will go into my cell without problem.
Lancer: I think I can do that! Let me go ask
King: Do not ask the Lightners. They will refuse my request.
King: I raised you well, my boy. You can make your own decision about this.
Lancer: I...
Lancer: Just for a few minutes?
King: Just a few.
Lancer: ...
Lancer: Okay.
(Lancer opens the cell)
*/

		/*array_push(obj_cutscenehandler_midfightattacks.after_textbox_queue, {
			type: "tenna_battle_intro"
			});*/
				
	
		/* Warp Code:
		if (instance_exists(obj_cutscenehandler_midfightattacks))
			    {
			        obj_cutscenehandler_midfightattacks.waiting_for_warp = true;
			    }
		*/
		
		/* Pitching Music:
			global.song = { sound: sng_?, bpm: ?, beats: ? };
			global.music = audio_play_sound(sng_?, 1, true);
			audio_sound_pitch(global.music, 0.7);
			global.song_start = current_time;
		*/
		/* Summoning UI (Not in battle):
			if (instance_exists(obj_UI))
			{
			    instance_destroy(obj_UI);
			}
			instance_create_depth(0, 0, -5000, obj_UI);
		    audio_stop_all();
		    global.song = { sound: sng_cmmm, bpm: 130, beats: 9999 };
			global.music = audio_play_sound(sng_cmmm, 1, true);
			audio_sound_pitch(global.music, 1.25);
			global.song_start = current_time;
		*/
		
		/* Movement Queue:
			scr_queue_movement_group_after_textbox([
				   { obj: obj_gerson, sprite: spr_gerson_hammer_walkright_lantern, loop: true, dx: 15, dy: 3, speed: .2, duration: 75 },
				   { obj: obj_mewmew, sprite: spr_ghost_shocked_left, loop: false, dx: 0, dy: -10, speed: .2, duration: 75 }
			]);
		*/
		
		// Battle Example:
		/* case "self_18":
			if (instance_exists(obj_UI))
			{
			    instance_destroy(obj_UI);
			}
			instance_create_depth(0, 0, -5000, obj_UI);
		    obj_UI.sprite_index = spr_UI_Pink;
			obj_mewmew.sprite_index = spr_ghost_shocked_left;
		    var pink = obj_mewmew;
		    var _seq = instance_create_depth(0, 0, 0, obj_fight_sequencer);
		    _seq.sequence = [
				{
			        type: "ui_sequence",
			        steps: [
			            { sprite: spr_UI_Pink, delay: 30 },
			            { sprite: spr_UI_Pink_Defend, snd: snd_select_reverb, delay: 30 },
			        ]
			    },
		        { type: "talk", batch: [ { speaker: pink, text: "Hey! Hey!!! HEY!!!"} ] },
				{ type: "talk", batch: [ { speaker: pink, text: "GERSON!!! I'M ON YOUR SIDE!!!" } ] },
				{ type: "talk", batch: [ { speaker: pink, text: "WHAT'S GOING ON???" } ] },
		        { type: "attack", attacker: obj_sound_of_justice, data: global.atk_sound_of_justice_hammers },
				{
			        type: "ui_sequence",
			        steps: [
			            { sprite: spr_UI_Pink, delay: 30 },
			            { sprite: spr_UI_Pink_Defend, snd: snd_select_reverb, delay: 30 },
			        ]
			    },
		        { type: "talk", batch: [ { speaker: pink, text: "DIDN'T WE PLAN TO DO THIS???" } ] },
				{ type: "talk", batch: [ { speaker: pink, text: "WHY ARE YOU ATTACKING ME???" } ] },
		        { type: "attack", kind: "custom", start_func: scr_start_giant_hammer_attack },
				{
			        type: "ui_sequence",
			        steps: [
			            { sprite: spr_UI_Pink, delay: 30 },
			            { sprite: spr_UI_Pink_Defend, snd: snd_select_reverb, delay: 30 },
			        ]
			    },
				{ type: "talk", batch: [ { speaker: pink, text: "You know I can't take damage... right???" } ] },
				{ type: "talk", batch: [ { speaker: pink, text: "So... quit it!!!" } ] },
				{ type: "attack", kind: "custom", start_func: scr_start_falling_hammer_attack },
				{
			        type: "ui_sequence",
			        steps: [
			            { sprite: spr_UI_Pink, delay: 30 },
			            { sprite: spr_UI_Pink_Defend, snd: snd_select_reverb, delay: 30 },
			        ]
			    },
				{ type: "sprite", target: obj_mewmew, new_sprite: spr_ghost_wistful },
				{ type: "talk", batch: [ { speaker: pink, text: "We need to... find my body..." } ] },
				{ type: "sprite", target: obj_mewmew, new_sprite: spr_ghost_yelling_right },
				{ type: "talk", batch: [ { speaker: pink, text: "Damn it, Gerson, don't you double-cross me too!!!" } ] },
				{ type: "sprite", target: obj_mewmew, new_sprite: spr_ghost_shocked_left },
				{ type: "attack", kind: "custom", start_func: scr_start_gavel_slam_attack },
				{
			        type: "ui_sequence",
			        steps: [
			            { sprite: spr_UI_Pink, delay: 30 },
			            { sprite: spr_UI_Pink_Defend, snd: snd_select_reverb, delay: 30 },
			        ]
			    },
				{ type: "sprite", target: obj_mewmew, new_sprite: spr_ghost_wistful },
				{ type: "talk", batch: [ { speaker: pink, text: "Come on, Gerson. I don't want to fight you." } ] },
				{ type: "talk", batch: [ { speaker: pink, text: "So stop fighting me..." } ] },
		        // add more talk/attack pairs as you write more dialogue/attacks
		    ];		
		break;
		
		case "self_19":
			scr_ui_reverse(sng_empty);
			audio_stop_all();
			scr_text("* Please...", "mewmewghost");
				scr_portrait_on_page(spr_pinkghost_scared);
	        scr_portrait_tail_off();
	        scr_snd_after_textbox(snd_sojlaugh, 1);
	        scr_obj_sprite_after_textbox(obj_sound_of_justice, spr_sound_of_justice_laugh, true);
	        scr_custom_call_after_textbox_delayed(scr_spawn_soj_hit_hammer, 113); // mid-laugh hammer hit
			scr_obj_sprite_after_textbox_delayed(obj_mewmew, spr_ghost_shocked_left, false, 120);
	        scr_custom_call_after_textbox_delayed(scr_start_pan_and_reveal_left, 150); // shortly after the hit
		break;
	*/
	}
}