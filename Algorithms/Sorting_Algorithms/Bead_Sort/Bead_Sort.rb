class Array
  def beadsort
    map {|e| [1] * e}.columns.columns.map(&:length)
  end
 
  def columns
    y = length
    x = map(&:length).max
    Array.new(x) do |row|
      Array.new(y) { |column| self[column][row] }.compact
    end
  end
end
 
p [5,3,1,7,4,1,1].beadsort
