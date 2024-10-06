extends Control
var db
var db_name="res://confirmed_planets"
var texto
var base="https://exoplanetarchive.ipac.caltech.edu/overview/"
var primero=preload("res://8.png")
var segundo=preload("res://7.png")
var tercero=preload("res://10.png")
var cuarto=preload("res://1.png")

var informacion


# Called when the node enters the scene tree for the first time.
func _ready():
	db = SQLite.new()
	db.path = db_name
	readFromDB()

func readFromDB():
	db.open_db()
	var tableName = "Confirmed_Planets"
	print(db.query("select * from " + tableName + ";"))
	var planeta="Planet Name"
	

func _process(delta):
	pass


func _on__pressed():
	Global.exoplaneta1=true
	$Control2.visible=true
	$Control2/Control/Control/TextureRect.texture=primero
	

func _on_n_2_pressed():
	Global.exoplaneta2=true
	$Control2.visible=true
	$Control2/Control/Control/TextureRect.texture=segundo
	$Control2/Control/Control2/Control2/RichTextLabel.text="This gas giant is 1.8 times the size of Jupiter, making it one of the largest planets discovered so far. Its massive size suggests it is primarily composed of gases like hydrogen and helium."
	
func _on_n_3_pressed():
	Global.exoplaneta3=true
	$Control2.visible=true
	$Control2/Control/Control/TextureRect.texture=tercero
	$Control2/Control/Control2/Control2/RichTextLabel.text='2 times the size of Earth. It is a "super Earth," meaning it is a rocky planet with greater mass and size than Earth but much smaller than gas giants like Neptune or Jupiter.'


func _on_n_4_pressed():
	Global.exoplaneta4=true
	$Control2.visible=true
	$Control2/Control/Control/TextureRect.texture=cuarto
	$Control2/Control/Control2/Control2/RichTextLabel.text="1.4 times the size of Earth, but its most interesting feature is its mass, which is 6.6 times greater, suggesting it is a rocky and extremely dense planet. This indicates it could have much higher gravity than Earth."


func _on_text_edit_text_changed():
	print($Control/TextEdit.text)

func _on_color_rect_pressed():
	texto=$Control/TextEdit.text
	
	for i in 550:
		if db.query_result[i]["Planet Name"]==texto:
			$Control2/Control/Control2/LinkButton.visible=true
			print("encontrado")
			$Control2.visible=true
			var defecto=preload("res://2.png")
			$Control2/Control/Control/TextureRect.texture=defecto
			#informacion=db.query("select * from Confirmed_Planets where Planet Name like "+texto+";")
			var nombre=db.query_result[i]["Planet Name"]
			var host=db.query_result[i]["Host Name"]
			var estrellas=db.query_result[i]["Number of Stars"]
			var planetas=db.query_result[i]["Number of Planets"]
			var metodo=db.query_result[i]["Discovery Method"]
			var año=db.query_result[i]["Discovery Year"]
			var facilidad=db.query_result[i]["Discovery Facility"]
			var solucion=db.query_result[i]["Solution Type"]
			var controversial=db.query_result[i]["Controversial Flag"]
			var parametro=db.query_result[i]["Planetary Parameter Reference"]
			var orbita=db.query_result[i]["Orbital Period [days]"]
			var espectral=db.query_result[i]["Spectral Type"]
			var ratio=db.query_result[i]["Stellar Metallicity Ratio"]
			var ra=db.query_result[i]["RA [sexagesimal]"]
			
			$Control2/Control/Control2/Control2/RichTextLabel.text="Planet Name: "+nombre+"\nHost Name: "+ host + "\nNumber of Stars: " + str(estrellas)+"\nNumber of Planets: "+str(planetas)+"\nDiscovery Method" + str(metodo)+"\nDiscovery Year: "+ str(año)+"\nDiscovery Facility"+facilidad+"\nSolution Type" + str(solucion)+"\nControversial Flag: "+str(controversial)+"\nPlanetary Parameter Reference: "+ parametro+"\nOrbital Period [days]: "+str(orbita)+"\nSpectral Type: "+ str(espectral)+"\nStellar Metallicity Ratio: "+str(ratio)+"\nRA [sexagesimal]: "+ str(ra)
			$Control2/Control/Control2/Control2/RichTextLabel.position.x=35
			$Control2/Control/Control2/Control2/RichTextLabel.position.y=85
			
			var correccion
			correccion=texto.replace(' ','%20')
			print(correccion)
			$Control2/Control/Control2/LinkButton.uri=base+correccion
	
func _on_back_pressed():
	Global.exoplaneta1=false
	Global.exoplaneta2=false
	Global.exoplaneta3=false
	Global.exoplaneta4=false
	Global.opcion1=false
	Global.opcion2=false
	Global.opcion3=false
	Global.opcion4=false
	$Control2.visible=false
	$Control2/Control/Control2/LinkButton.visible=false
	$Control2/Control/Control2/grafico1.visible=false
	$Control2/Control/Control2/grafico2.visible=false
	$Control2/Control/Control2/grafico3.visible=false
	$Control2/Control/Control2/grafico4.visible=false
	$Control2/Control/Control2/Control2/RichTextLabel.position.x=35
	$Control2/Control/Control2/Control2/RichTextLabel.position.y=370.171
	
	#$Control2/Control/Control2/Control2/RichTextLabel.text=""


func _on_control_2_visibility_changed():
	if Global.nasa_mode==true:
		
		pass
