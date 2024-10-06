extends Control
var click=false
var po

func falso():
	Global.opcion1=false
	Global.opcion2=false
	Global.opcion3=false
	Global.opcion4=false
func imagenes():
	$Control2/grafico1.visible=false
	$Control2/grafico2.visible=false
	$Control2/grafico3.visible=false
	$Control2/grafico4.visible=false
	
func _process(delta):
	
	if Input.is_action_pressed("click") && get_local_mouse_position().y>267 && $opciones/Window.visible==false:
		print(get_local_mouse_position())
		if get_local_mouse_position().y<=267:
			$Control2.position.y=267
		else:
			click=true
			po=get_local_mouse_position()
			$Control2.position.y=po[1]
	"""if Input.is_action_just_released("click"):
		click=false
		$Control2.position.y=532.956
	#print(get_local_mouse_position())
	pass
	#$Control2.position.y="""


func _on_planet_size_pressed():
	Global.opcion1=true
	if Global.opcion1 ==true && Global.exoplaneta1==true:
		imagenes()
		$Control2/grafico1.visible=true
		$Control2/Control2/RichTextLabel.text="Approximately 1.11 times the radius of Earth. This makes it a terrestrial-sized planet, which is especially interesting as it could have characteristics similar to our world."
		falso()
	if Global.opcion1 ==true && Global.exoplaneta2==true:
		$Control2/Control2/RichTextLabel.text="This gas giant is 1.8 times the size of Jupiter, making it one of the largest planets discovered so far. Its massive size suggests it is primarily composed of gases like hydrogen and helium."
		falso()
	if Global.opcion1 ==true && Global.exoplaneta3==true:
		$Control2/Control2/RichTextLabel.text='2 times the size of Earth. It is a "super Earth," meaning it is a rocky planet with greater mass and size than Earth but much smaller than gas giants like Neptune or Jupiter.'
		falso()
	if Global.opcion1 ==true && Global.exoplaneta4==true:
		$Control2/Control2/RichTextLabel.text="1.4 times the size of Earth, but its most interesting feature is its mass, which is 6.6 times greater, suggesting it is a rocky and extremely dense planet. This indicates it could have much higher gravity than Earth."
		falso()
func _on_orbital_pressed():
	Global.opcion2=true
	if Global.opcion2 ==true && Global.exoplaneta1==true:
		imagenes()
		$Control2/grafico2.visible=true
		$Control2/Control2/RichTextLabel.text="It completes a full orbit around its star in 130 Earth days. Notably, it orbits within the habitable zone of its star, where temperatures could be moderate enough to allow liquid water on its surface—a key requirement for life as we know it."
		falso()
	if Global.opcion2 ==true && Global.exoplaneta2==true:
		$Control2/Control2/RichTextLabel.text='1.1 Earth days. The extreme proximity to its star means WASP-12b is a "hot Jupiter," with incredibly high temperatures due to its closeness. It completes its orbit in just over a day, a striking feature that contributes to its hostile environment.'
		falso()
	if Global.opcion2 ==true && Global.exoplaneta3==true:
		$Control2/Control2/RichTextLabel.text="Only 18 hours. 55 Cancri e is extremely close to its star, orbiting at a distance where surface temperatures could reach 2,400°C (4,350°F), hot enough to melt rock and possibly create lava oceans."
		falso()
	if Global.opcion2 ==true && Global.exoplaneta4==true:
		$Control2/Control2/RichTextLabel.text="24.7 Earth days, meaning it is closer to its star than Earth is to the Sun, but since it orbits a cooler red dwarf, it could still be within the habitable zone."
		falso()
func _on_star_sistem_pressed():
	Global.opcion3=true
	if Global.opcion3 ==true && Global.exoplaneta1==true:
		imagenes()
		$Control2/grafico3.visible=true
		$Control2/Control2/RichTextLabel.text="It belongs to the Kepler-186 system, a red dwarf star smaller and cooler than the Sun. Located about 500 light years away in the constellation Cygnus, it remains a fascinating candidate for future studies, although it is beyond the reach of current technologies for direct exploration."
		falso()
	if Global.opcion3 ==true && Global.exoplaneta2==true:
		$Control2/Control2/RichTextLabel.text="It orbits the star WASP-12, a G-type star similar to the Sun, located around 1,400 light years from Earth in the constellation Auriga. However, because of WASP-12b’s proximity to its star, its atmosphere is being torn away by tidal forces and stellar radiation"
		falso()
	if Global.opcion3 ==true && Global.exoplaneta3==true:
		$Control2/Control2/RichTextLabel.text="It orbits the star 55 Cancri, a Sun-like star located just 41 light years away in the constellation Cancer. This system is particularly intriguing because 55 Cancri has five known planets, making it one of the most studied planetary systems after our own."
		falso()
	if Global.opcion3 ==true && Global.exoplaneta4==true:
		$Control2/Control2/RichTextLabel.text="It orbits the star LHS 1140, a red dwarf located 40 light years from Earth in the constellation Cetus. Red dwarfs are known for their longevity and cooler temperatures, which could allow for a more stable climate over time."
		falso()
func _on_planet_age_pressed():
	Global.opcion4=true
	if Global.opcion4 ==true && Global.exoplaneta1==true:
		imagenes()
		$Control2/grafico4.visible=true
		$Control2/Control2/RichTextLabel.text="Around 4 billion years old, similar to Earth, suggesting that Kepler-186f has had plenty of time to develop potentially stable conditions for life."
		falso()
	if Global.opcion4 ==true && Global.exoplaneta2==true:
		$Control2/Control2/RichTextLabel.text="Approximately 2 billion years, much younger than Earth. Due to its youth, WASP-12b is still undergoing dynamic planetary evolution."
		falso()
	if Global.opcion4 ==true && Global.exoplaneta3==true:
		$Control2/Control2/RichTextLabel.text="Approximately 8 billion years, making it one of the oldest known planets. This age suggests that it has undergone many phases of planetary evolution."
		falso()
	if Global.opcion4 ==true && Global.exoplaneta4==true:
		$Control2/Control2/RichTextLabel.text="Around 5 billion years, slightly older than Earth. This suggests that LHS 1140b has had enough time to develop stable planetary conditions, making it a priority target in the search for life."
		falso()


func _on_opciones_pressed():
	$opciones/Window.visible=true


func _on_window_close_requested():
	$opciones/Window.visible=false


func _on_on_pressed():
	Global.nasa_mode=true


func _on_off_pressed():
	Global.nasa_mode=false
