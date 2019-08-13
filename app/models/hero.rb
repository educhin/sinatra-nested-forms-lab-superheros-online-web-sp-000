class Hero
  attr_reader :name, :power, :bio

  @@heros = []

  def initialize(params)
    @name = params[:name]
    @power = params[:power]
    @bio = params[:bio]
  end

  def self.all
    @@heros
  end
end
