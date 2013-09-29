namespace :db do
  desc "fill the sheetfields table"
  task fill_fields: :environment do
    FieldType.create!(name: 'Email', defaultVal: "", validation: '\\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\\z', min_length: 6, max_length: 100, user_generated: false)
    FieldType.create!(name: 'First Name', defaultVal: "", validation: '\\A[a-zA-Z.\-\\\'\\s]+\\z', min_length: 6, max_length: 100,  user_generated: false)
    FieldType.create!(name: 'Last Name', defaultVal: "", validation: '\\A[a-zA-Z.\-\\\'\\s]+\\z', min_length: 6, max_length: 100,  user_generated: false)
    FieldType.create!(name: 'Middle Name', defaultVal: "", validation: '\\A[a-zA-Z.\-\\\'\\s]+\\z', min_length: 6, max_length: 100,  user_generated: false)
    FieldType.create!(name: 'Full Name', defaultVal: "", validation: '\\A[a-zA-Z.\-\\\'\\s]+\\z', min_length: 6, max_length: 100,  user_generated: false)
    FieldType.create!(name: 'Address', defaultVal: "", validation: '\\A[a-zA-Z.\-\\\'\\d\\/\\s]+\\z', min_length: 6, max_length: 100,  user_generated: false)
    FieldType.create!(name: 'Phone Number', defaultVal: "", validation: '\\A[\\d-\\s]+\\z', min_length: 6, max_length: 100,  user_generated: false)
    FieldType.create!(name: 'Work Phone Number', defaultVal: "", validation: '\\A[\\d-\\s]+\\z', min_length: 6, max_length: 100,  user_generated: false)
    FieldType.create!(name: 'Cell Phone Number', defaultVal: "", validation: '\\A[\\d-\\s]+\\z', min_length: 6, max_length: 100,  user_generated: false)
    FieldType.create!(name: 'Fax Phone Number', defaultVal: "", validation: '\\A[\\d-\\s]+\\z', min_length: 6, max_length: 100,  user_generated: false)
    FieldType.create!(name: 'Job title', defaultVal: "", validation: '', min_length: 6, max_length: 100,  user_generated: false)
    FieldType.create!(name: 'Company', defaultVal: "", validation: '\\A[\\d-\\s]+\\z', min_length: 6, max_length: 100,  user_generated: false)
    FieldType.create!(name: 'About me', defaultVal: "", validation: '\\A[\\d-\\s]+\\z', min_length: 6, max_length: 100,  user_generated: false)
  end
end