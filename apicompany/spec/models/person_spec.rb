# frozen_string_literal: true
require 'rails_helper'

RSpec.describe Person, type: :model do

  subject {
    described_class.new(name: 'Carolina',
                        project_id: 1,
                        country_id: 1,
                        rol_id: 1,
                        person_type: 'Customer')
  }

  describe "Associations" do
    it { should belong_to(:project).without_validating_presence }
    it { should belong_to(:country).without_validating_presence }
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without a project_id' do
    subject.project_id = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without a country_id' do
    subject.country_id = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without a rol_id' do
    subject.rol_id = nil
    expect(subject).to_not be_valid
  end
end
