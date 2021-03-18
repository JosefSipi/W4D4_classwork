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

    describe "#my_transpose" do
        # check is arr length is same
        # check if indices are properly transposed

        let(:arr_3) { [
                        [0, 1, 2],
                        [3, 4, 5],
                        [6, 7, 8]
                    ]}
        let(:arr_4) { [[0, 3, 6],
                       [1, 4, 7],
                       [2, 5, 8]   
                    ]}
        

        it 'called on an array' do 
            expect{arr.my_uniq}.not_to raise_error(NoMethodError)
        end

        it 'check 2d array length is same' do 
            expect(arr_3.my_transpose.length).to be(3)
        end

        it 'check if indices are properly transposed' do 
            expect(arr_3.my_transpose[1][0]).to eq(1)
            expect(arr_3.my_transpose[1][2]).to eq(7)
            expect(arr_3.my_transpose[2][0]).to eq(2)
            expect(arr_3.my_transpose[2][1]).to eq(5)
            expect(arr_3.my_transpose[0][2]).to eq(6)
        end

        it 'returns 2d array' do 
            expect(arr_3.my_transpose).to eq(arr_4)
        end
    end


end
