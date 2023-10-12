
#mon programme va aller de zéro jusqu'à 1000 (par exemple) et à chaque chiffre va tester s'il est multiple de 3 ou 5. Si c'est le cas, il met le chiffre de côté, dans une boite, pour faire une somme à la fin. Si le chiffre n'est pas multiple, on l'oublie et on passe au suivant".

#Elle vérifie si le chiffre en entrée (current_number) est multiple ou non de 3 ou 5. Elle retourne un booléen (true ou false) en fonction.
def is_multiple_of_3_or_5?(num)
    if num % 3 == 0 || num % 5 == 0
        return true
    else
        return false
    end
end

#Elle boucle sur les nombres de 0 à "final_number" : chaque nombre est testé par is_multiple_of_3_or_5?(current_number) pour savoir (à chaque tour de boucle), s'il faut mettre le nombre en question dans la somme finale ou passer au suivant.
def sum_of_3_or_5_multiples(final_number)

    final_sum = 0 #cette variable est la somme finale qui sera retournée. Ici on l'initialise à zéro

    if final_number.is_a?(String) || final_number < 0 || final_number.is_a?(Float)
        return "Yo ! Je ne prends que les entiers naturels. TG"
    end

     (0..final_number-1).each do |current_number|
        if is_multiple_of_3_or_5?(current_number)
            final_sum += current_number 
        end
     end
     return final_sum
end
