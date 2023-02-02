class BoardCase
    #TO DO : la classe a 2 attr_accessor, sa valeur en string (X, O, ou vide), ainsi que son identifiant de case
    attr_accessor :value, :id_case
  
    
    def initialize(id_case)
      #TO DO : doit régler sa valeur, ainsi que son numéro de case
      @value = " "
      @id_case = id_case

    end
    
  end
  