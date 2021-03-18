require 'rspec'
require 'Problems'

# describle array
# return arr without dups
# returns singles in order
# returns a new arr

describe Array do 

    # subject(:arr) { [1,2,2] }
    let(:arr) { [2,3,1,2,1] }

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




end
