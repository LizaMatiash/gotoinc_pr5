# frozen_string_literal: true

# sss
class Station
  attr_reader :train
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @train = {}
    @@all << name
  end

  def coming(trn)
    train[trn.number] = { type: trn.type, size: trn.size }
  end

  def show_all
    puts "Trains that stands here: #{train.keys.join(', ')}"
  end

  # грузові
  def show_freight
    puts 'Freigh trains that stands here: '
    train.each { |k, _v| puts k if train[k][:type] == 'freight' }
  end

  # пасажирські
  def show_passanger
    puts 'Passanger trains that stands here: '
    train.each { |k, _v| puts k if train[k][:type] == 'passanger' }
  end

  def send(number)
    puts "Bye train #{number}"
    train.delete(number)
  end

  def all_stations
    @@all.map { |station| puts station }
  end
end
