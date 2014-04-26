require 'rubygems'
require 'rspec'

require_relative 'bowling'

describe Bowling do
  before do
    @bowling = Bowling.new
    @data1 = [[5,3],[7,2],[8,'/'],['X'],[7,1],[9,'-'],[6,2],['X'],[6,'/'],[8,'-']]
    @data2 = [['-','-'], ['X'], [8,'/'],['X'],['X'],['X'],[5,3],[8,'/'],['X'],['X','X','X']]
    # @data3 =
    # @data4 =
  end
  it 'スコアを返す' do
    @bowling.calc(@data1).should eq 126
  end
  # it 'スコアを返す' do
    # @bowling.calc(@data2).should eq 201
  # end

  it '' do
    @bowling.calc_frame([1,1]).should eq 2
  end
  it '' do
    @bowling.calc_frame(['X']).should eq 10
  end
end
