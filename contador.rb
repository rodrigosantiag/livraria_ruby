module Contador
  def maximo_necessario
    if @maximo_necessario.nil? || @maximo_necessario < size
      @maximo_necessario = size
    end
    @maximo_necessario
  end
end