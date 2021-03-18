require 'rspec'
require 'Problems'

# describle array
# return arr without dups
# returns singles in order
# returns a new arr

describe Array do 

    # subject(:arr) { [1,2,2] }
    let(:arr) { [2,3,1,2,1] }
    let(:arr_2) {[-1, 0, 2, -2, 1 ]}

    describe '#my_uniq' do

        it 'called on an array' do 
            expect{arr.my_uniq}.not_to raise_error(NoMethodError)
        end

        it 'return only uniq values from given array' do
           expect(arr.my_uniq).to include(2,3,1)
        end

        it 'returns array in uniq order'   do
            expect(arr.my_uniq).to eq([2,3,1])
        end

    end

    describe "#two_sum" do
    # the indecies are sorted smaller to bigger
    # returns an empty array if no pair is found
    it "returns position of the pairs that add to zero" do
        expect(arr_2.two_sum).to eq([[0,4],[2,3]])
    end

    it "Finds correct numbers of pairs" do
        expect(arr_2.two_sum.length).to eq(2)
        expect(arr.two_sum.length).to eq(0)
    end

    it "returns an empty array if no pair is found" do 
        expect(arr.two_sum).to eq([])
    end

    end
end
