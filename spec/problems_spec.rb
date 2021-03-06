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

    # returns an array of two indices 

    describe "#stock_picker" do
        let(:arr_6) { [10,20,15, 30, 10] }
        let(:arr_7) { [30, 25, 20, 15, 10] }

        it "returns array of length 2" do
            expect(arr_6.stock_picker.length).to eq(2)
        end

        it "returns most profitable pair" do
            expect(arr_6.stock_picker).to eq([0, 3])
        end

        it "second day is larger than first day" do
            expect(arr_6.stock_picker[1] > arr_6.stock_picker[0]).to be(true) 
        end

        it "returns [] if no pairs are profitable" do
            expect(arr_7.stock_picker).to eq([])
        end

        # it 'returns 2d array' do 
        #     expect(arr_6.stock_picker).to eq(arr_6)
        # end
        #

    end

end


describe Towers do 

    describe "#initialize" do 
        # initialize 2d array with 3 stacks 
        # put 4 pieces in stack 1 in order
        # runs start game method 

        it 
    end

    describe '#move' do 

    end

    describe "#won?" do 
        
        it "stack_start == stack_finish"

        it "gameover returns true"
    end

    describe '#run_game' do 

        it "calls won? once"

        it "calls get.chomp, prompts user for input"

        it 'calls make_move on user input'
    end


end


