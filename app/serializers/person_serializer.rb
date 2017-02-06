class PersonSerializer < ActiveModel::Serializer
  attributes :ic_id, :tax_num, :ssn, :full_name, :img, :total_debt
end
