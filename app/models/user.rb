class User < ApplicationRecord
  belongs_to :genero
  has_many :contatos, dependent: :destroy
  accepts_nested_attributes_for :contatos, reject_if: :all_blank,
   allow_destroy: true

  validates :name, :age, :cpf, :genero, :contatos, presence:true
  validates_length_of :cpf, is: 14
  validates :cpf, uniqueness: true
  validates_numericality_of :age, minimum: 1, maximum: 150
  validates :name, format: { with: /\A[a-zA-Z]+\z/, message: "need to be letter " }
end