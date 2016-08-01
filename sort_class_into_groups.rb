@my_students = ["Tony Viana", "Ashante Robinson", "Omar Amezcua", "Serg.io", "Saul Fernandez", "Mauricio Hernandez", "John Griffin", "Maryjane Medina", "Jeffrey Quintanilla", "Vanessa Castro", "Jonathan Flores", "Andres Cedano", "Josias Vidrio", "Anahis Duenas", "Yolie Ooh Na Na", "Barla", "Joey Pineda", "John Perez", "David Maya Soto", "Gyzelle", "Ivan Refugio Saldana-Garcia", "Josue Bravo", "Jose Aguilar", "George Avalos", "Mayra De La Cruz", "Yehymmy Hernandez", "Susana Fernandez", "Danilu Ramirez"]

@my_upperline_students = ["Starbucks Serahn", "Delirious David", "Great Gino", "Happy Holly", "Nappy Nick", "Excited Elizabeth", "Hungry Henry", "Jumping Jackie", "Joyful Jo", "Spontaneous Sarah", "Spectacular Stella", "Manly Mohammad", "Krunchy Kiran", "Lazy Lisandro", "Awesome Alex", "Hilarious Harry", "Sneaky Steven", "Shopping Saira", "Cool Chris", "Musical Max"]

@kode_with_klossy_students = ["Amazing Bananabelle","Diamond Diana", "Mindful Maddy", "Sunday Stephanie", "Friendly Faith", "Superior Savannah", "Super Shawdi", "Konfused Katrina", "Jellyfish Justine", "Silly Sofia", "Avocado Anya", "Shakin' Sherry", "Happy Hana", "Sassy Shirley", "Cool Charity", "Animal Lover Anahi", "Adventurous Audrey", "Vibrant Victoria", "Astounding Aatena", "Nice Natalie", "Magical Maya", "Energetic Emma", "Jamming Jordan"]

def randomly_sort_my_class(student_list=@kode_with_klossy_students, group_size=3)
	if student_list.is_a?(String)
		student_list = student_list.split(", ")
	end
  #store the group size in an instance variable
  @size = group_size
  #make an array to hold the arrays of groups
  @my_groups = []
  #list all of the students in my class
 	@student_list = student_list
  #looping function that creates arrays for groups and adds those arrays to my_groups array
  def create_groups
    #declare new group array that we will add students to
    @new_group = [] 
    #while loop that runs until all students have been used up
    while @student_list.length > 0 do
    #select student randomly from array
      student = @student_list.sample
    #remove randomly selected student from my students array
      @student_list.delete_if {|item| item === student}
    #add that student to the new_group array
      @new_group << student
    #check to see if the new group array is as large as the group size we want and if it is, add it to the my_groups array before clearing it.
      if @new_group.length === @size
        @my_groups << @new_group
				@new_group = []
      elsif @student_list.length === 0
        @my_groups << @new_group
      end
    end
  end
	create_groups
  @my_groups.each_with_index {|v,i| puts "Group #{i + 1}. #{v}"} 
end

randomly_sort_my_class()
