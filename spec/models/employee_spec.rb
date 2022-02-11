require 'rails_helper'

RSpec.describe Employee, type: :model do
  before do
  @employee = FactoryBot.build(:employee)
  end

  describe '新規スタッフ登録機能' do
    context '登録できる場合' do
      it 'employee_num、name、one_thingと、email、password、password_confirmationがあれば登録できる' do
        expect(@employee).to be_valid
      end
    end

    context '登録できない場合' do
      it 'employee_numが空では予約できない' do
        @employee.employee_num = ''
        @employee.valid?
        expect(@employee.errors.full_messages).to include "Employee num can't be blank"
      end
      it 'nameが空では予約できない' do
        @employee.name = ''
        @employee.valid?
        expect(@employee.errors.full_messages).to include "Name can't be blank"
      end
      it 'one_thingが空では予約できない' do
        @employee.one_thing = ''
        @employee.valid?
        expect(@employee.errors.full_messages).to include "One thing num can't be blank"
      end
      it 'emailが空では予約できない' do
        @employee.email = ''
        @employee.valid?
        expect(@employee.errors.full_messages).to include "Email can't be blank"
      end
      it 'メールアドレスに@を含まない場合は登録できない' do
        @employee.email = 'aaa.com'
        @employee.valid?
        expect(@employee.errors.full_messages).to include 'Email is invalid'
      end
      it 'passwordが空では予約できない' do
        @employee.password = ''
        @employee.valid?
        expect(@employee.errors.full_messages).to include "Password num can't be blank"
      end
      it 'passwordとpassword_confirmationが不一致では登録できない' do
        @employee.password = '000aaa'
        @employee.password_confirmation = '000aab'
        @employee.valid?
        expect(@employee.errors.full_messages).to include "Password confirmation doesn't match Password"
      end
      it 'passwordが5文字以下では登録できない' do
        @employee.password = '000aa'
        @employee.password_confirmation = '000aa'
        @employee.valid?
        expect(@employee.errors.full_messages).to include 'Password is too short (minimum is 6 characters)'
      end
      it 'passwordが数字のみでは登録できない' do
        @employee.password = '000000'
        @employee.password_confirmation = '000000'
        @employee.valid?
        expect(@employee.errors.full_messages).to include 'Password is invalid. Include both letters and numbers.'
      end
      it '英字のみのパスワードでは登録できない' do
        @employee.password = 'aaaaaa'
        @employee.valid?
        expect(@employee.errors.full_messages).to include 'Password is invalid. Include both letters and numbers.'
      end
      it '全角文字を含むパスワードでは登録できない' do
        @employee.password = 'a1あああ111'
        @employee.valid?
        expect(@employee.errors.full_messages).to include 'Password is invalid. Include both letters and numbers.'
      end
    end
  end
end
