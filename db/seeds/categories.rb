# frozen_string_literal: true

require 'faker'

women = Category.create(
  title:       'Women',
  bytitle:     'women',
  keywords:    'women',
  description: 'for women'
)

electronic2 = Category.create(
  title:       'Electronic',
  bytitle:     'electronic2',
  keywords:    'electronic',
  description: 'electronic',
  parent:      women
)

mechanical2 = Category.create(
  title:       'Mechanical',
  bytitle:     'mechanical2',
  keywords:    'mechanical',
  description: 'mechanical',
  parent:      women
)

Category.create(
  title:       'Epos',
  bytitle:     'epos',
  keywords:    'epos',
  description: 'epos',
  parent:      electronic2
)

Category.create(
  title:       'Seiko',
  bytitle:     'seiko',
  keywords:    'seiko',
  description: 'seiko',
  parent:      mechanical2
)

men = Category.create(
  title:       'Men',
  bytitle:     'men',
  keywords:    'men',
  description: 'for men'
)

electronic1 = Category.create(
  title:       'Electronic',
  bytitle:     'electronic1',
  keywords:    'electronic',
  description: 'electronic',
  parent:      men
)

mechanical1 = Category.create(
  title:       'Mechanical',
  bytitle:     'mechanical1',
  keywords:    'mechanical',
  description: 'mechanical',
  parent:      men
)

Category.create(
  title:       'Casio',
  bytitle:     'casio',
  keywords:    'casio',
  description: 'casio',
  parent:      mechanical1
)

Category.create(
  title:       'Citizen',
  bytitle:     'citizen',
  keywords:    'citizen',
  description: 'citizen',
  parent:      electronic1
)

Category.create(
  title:       'Royal London',
  bytitle:     'royal-london',
  keywords:    'royal-london',

  description: 'royal-london',
  parent:      electronic1
)

kids = Category.create(
  title:       'Kids',
  bytitle:     'kids',
  keywords:    'kids',
  description: 'for kids'
)

Category.create(
  title:       'Adriatica',
  bytitle:     'adriatica',
  keywords:    'adriatica',
  description: 'adriatica',
  parent:      kids
)

Category.create(
  title:       'Anne Klein',
  bytitle:     'anne-klein',
  keywords:    'anne-klein',
  description: 'anne-klein',
  parent:      kids
)
