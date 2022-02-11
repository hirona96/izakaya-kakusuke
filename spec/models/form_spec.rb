require 'rails_helper'

RSpec.describe Form, type: :model do
  before do
    @form = FactoryBot.build(:form)
  end

  describe '予約機能' do
    context '予約できる場合' do
      it 'last_name_kanaとfirst_name_kana、phone_number、number_of_people、seat、datetimeがあれば予約できる' do
        expect(@form).to be_valid
      end
    end

    context '予約できない場合' do
      it 'last_name_kanaが空では予約できない' do
        @form.last_name_kana = ''
        @form.valid?
        expect(@form.errors.full_messages).to include "Last name kana can't be blank"
      end
      it 'first_name_kanaが空では予約できない' do
        @form.first_name_kana = ''
        @form.valid?
        expect(@form.errors.full_messages).to include "First name kana can't be blank"
      end
      it 'last_name_kanaがカタカナ以外では予約できない' do
        @form.last_name_kana = 'あいた'
        @form.valid?
        expect(@form.errors.full_messages).to include "Last name kana is invalid. Input full-width characters."
      end
      it 'first_name_kanaがカタカナ以外では予約できない' do
        @form.first_name_kana = 'しょう'
        @form.valid?
        expect(@form.errors.full_messages).to include "First name kana is invalid. Input full-width characters."
      end
      it 'phone_numberが空では予約できない' do
        @form.phone_number = ''
        @form.valid?
        expect(@form.errors.full_messages).to include "Phone number can't be blank"
      end
      it 'phone_numberが10桁以上11桁以内の半角数値でなければ保存できない' do
        @form.phone_number = '000-0000-0000'
        @form.valid?
        expect(@form.errors.full_messages).to include 'Phone number is invalid. Input only number'
      end
      it 'phone_numberが9桁以下では購入できない' do
        @form.phone_number = '0000000'
        @form.valid?
        expect(@form.errors.full_messages).to include 'Phone number is invalid'
      end
      it 'phone_numberが12桁以上では購入できない' do
        @form.phone_number = '000000000000000'
        @form.valid?
        expect(@form.errors.full_messages).to include 'Phone number is invalid'
      end
      it 'number_of_peopleが空では予約できない' do
        @form.number_of_people = ''
        @form.valid?
        expect(@form.errors.full_messages).to include "Number of people can't be blank"
      end
      

    end


  end
end
