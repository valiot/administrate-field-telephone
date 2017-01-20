require 'administrate/field/telephone'

describe Administrate::Field::Telephone do
  describe '#to_partial_path' do
    it 'returns a partial based on the page being rendered' do
      page = :show
      field = Administrate::Field::Telephone.new(:status, 'status', page)

      path = field.to_partial_path

      expect(path).to eq('/fields/telephone/#{page}')
    end
  end
end
