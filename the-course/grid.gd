extends Node2D

func _ready():
	# Outer loop for rows
	for i in range(3):
		var row = ""
		# Inner loop for columns
		for j in range(3):
			# Append the coordinate (i, j) to the row string
			row += "(%d, %d) " % [i, j]
		# Print the row
		print(row)
