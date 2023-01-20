# frozen_string_literal: true

# Action
class Action
  def initialize(strategy)
    @strategy = strategy
  end

  def call
    @strategy.execute
  end
end

# ActionType1
class ActionType1
  def execute
    puts 'Executa ação TIPO1'
  end
end

# ActionType2
class ActionType2
  def execute
    puts 'Executa ação TIPO2'
  end
end

# ActionType3
class ActionType3
  def execute
    puts 'Executa ação TIPO3'
  end
end

# ActionType4
class ActionType4
  def execute
    puts 'Executa ação TIPO4'
  end
end

# ActionType5
class ActionType5
  def execute
    puts 'Executa ação TIPO5'
  end
end

# ActionType6
class ActionType6
  def execute
    puts 'Executa ação TIPO6'
  end
end

Action.new(ActionType1.new).call
Action.new(ActionType2.new).call
Action.new(ActionType3.new).call
Action.new(ActionType4.new).call
Action.new(ActionType5.new).call
Action.new(ActionType6.new).call
