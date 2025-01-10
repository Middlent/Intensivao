extends Area2D


func hitou(enemy_area):
	if enemy_area.get_parent().is_in_group("Goblin"):
		print("Ganhamo ouro")
