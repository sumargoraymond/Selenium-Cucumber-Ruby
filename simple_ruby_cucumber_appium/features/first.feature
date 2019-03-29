Feature: Search Product at Kudo
 
 Scenario: Complete onboarding
    Gien I try to complete first onboarding
    Then I wait for 7 sec
    And I try to complete second onboarding
    
  Scenario: Login
    Given I click Masuk Sebagai Agen
    Then I enter username "0123455697"
    And I click Mulai Berjualan
    And I wait for 1 sec
    And I enter password "Kudotester69"
    And I click Login
    
  Scenario: Checkout multiple products
    When I click search
    Then I enter kata kunci "Celana"
    And I wait for 2 sec
    And I go to product listing
    And I scroll down
    And I open product
    Then I check product name with id "kudo.mobile.app:id/product_detail_tv_name" contains "Celana"
    And I click beli
    And I click Jangan tampilkan pesan ini lagi
    And I go to product listing
    And I scroll down
    And I open product
    Then I check product name with id "kudo.mobile.app:id/product_detail_tv_name" contains "Celana"
    And I click beli
    And I tap on back button of device
    And I go to product listing
    And I scroll down
    And I open product
    Then I check product name with id "kudo.mobile.app:id/product_detail_tv_name" contains "Celana"
    And I click beli
    And I tap on back button of device
    And I go to product listing
    And I tap on back button of device
    Then I check the number of items in cart with id "kudo.mobile.app:id/menu_badge" should be "3"