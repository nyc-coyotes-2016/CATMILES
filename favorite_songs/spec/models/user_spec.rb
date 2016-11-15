require 'rails_helper'

  describe User do
    let(:user) { User.new(username: 'JRails', email: 'jrails@gmail.com', password: 'password') }

    describe 'validations' do
      it 'is valid when it has a username' do
        user.username = 'JRails'
        user.valid?
        expect(user.errors[:username]).to be_empty
      end

      it 'is valid when the length of the user name greater than 6 characters' do
        user.username.length >= 6
        user.valid?
        expect(user.errors[:username]).to be_empty
      end

      it 'is valid when the length of the username is less than 35 characters' do
        user.username.length <=35
        user.valid?
        expect(user.errors[:username]).to be_empty
      end

      it 'is valid when it has an email' do
        user.email = 'jrails@gmail.com'
        user.valid?
        expect(user.errors[:email]).to be_empty
      end

      it 'is valid when it has a password' do
        !user.password.empty? && user.password != ""
        user.valid?
        expect(user.errors[:password]).to be_empty
      end

      it 'is valid when it has a password that is at least 8 charcters in length' do
        user.password.length >= 8
        user.valid?
        expect(user.errors[:password]).to be_empty
      end
      it 'is valid when it has a password that is less then 36 charcters in length' do
        user.password.length <= 36
        user.valid?
        expect(user.errors[:password]).to be_empty
      end
    end
  end
