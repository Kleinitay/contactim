namespace :db do
  desc "fill the sheetfields table"
  task "fill_fields" do
    FieldType.create!(Name: 'Email', defaultVal: "", validation: '\\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\\z', min_length: 6, max_length: 100, user_generated: false)
    FieldType.create!(Name: 'First Name', defaultVal: "", validation: '\\A[a-zA-Z.\-\\\'\\s]+\\z', min_length: 6, max_length: 100,  user_generated: false)
    FieldType.create!(Name: 'Last Name', defaultVal: "", validation: '\\A[a-zA-Z.\-\\\'\\s]+\\z', min_length: 6, max_length: 100,  user_generated: false)
    FieldType.create!(Name: 'Middle Name', defaultVal: "", validation: '\\A[a-zA-Z.\-\\\'\\s]+\\z', min_length: 6, max_length: 100,  user_generated: false)
    FieldType.create!(Name: 'Full Name', defaultVal: "", validation: '\\A[a-zA-Z.\-\\\'\\s]+\\z', min_length: 6, max_length: 100,  user_generated: false)
    FieldType.create!(Name: 'Address', defaultVal: "", validation: '\\A[a-zA-Z.\-\\\'\\d\\/\\s]+\\z', min_length: 6, max_length: 100,  user_generated: false)
    FieldType.create!(Name: 'Phone Number', defaultVal: "", validation: '\\A[\\d-\\s]+\\z', min_length: 6, max_length: 100,  user_generated: false)
    FieldType.create!(Name: 'Work Phone Number', defaultVal: "", validation: '\\A[\\d-\\s]+\\z', min_length: 6, max_length: 100,  user_generated: false)
    FieldType.create!(Name: 'Cell Phone Number', defaultVal: "", validation: '\\A[\\d-\\s]+\\z', min_length: 6, max_length: 100,  user_generated: false)
    FieldType.create!(Name: 'Fax Phone Number', defaultVal: "", validation: '\\A[\\d-\\s]+\\z', min_length: 6, max_length: 100,  user_generated: false)
    FieldType.create!(Name: 'Job title', defaultVal: "", validation: '', min_length: 6, max_length: 100,  user_generated: false)
    FieldType.create!(Name: 'Company', defaultVal: "", validation: '\\A[\\d-\\s]+\\z', min_length: 6, max_length: 100,  user_generated: false)
  end
end