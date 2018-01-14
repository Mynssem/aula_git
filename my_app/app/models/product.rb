class Product < ApplicationRecord
  # validação no campo nome para um registro na tabela products
  # o parâmetro não pode ser vazio e deve possuir um mínimo de 5
  # e um máximo de 100 caracteres
  validates :name, presence: true, length: { in: 5..100 }
  # validação no campo validade para um registro na tabela products
  # o parâmetro não pode ser vazio, deve ser numérico
  # e possuir exatamente 8 caracteres
  validates :validity, presence: true, numericality: { only_integer: true },
    length: { minimum: 8, maximum: 8 }
  # validação do campo quantidade
  validates :quantity, presence: true, numericality: { only_integer: true },
    length: { minimum: 1, maximum: 1000 }
    # validação do campo fornecedor
  validates :provider, presence: true, length: { in: 5..100 }
end
