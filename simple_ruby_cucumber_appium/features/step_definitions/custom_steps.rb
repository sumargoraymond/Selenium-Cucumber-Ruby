require 'selenium-cucumber'
require 'selenium-webdriver'
require 'appium_lib'

Then /^I try to complete first onboarding/ do
    step %[I wait for 10 sec]
    step %[I tap on back button of device]
    for i in 1..4
  $driver.find_element(:id, "kudo.mobile.app:id/btn_next_kudo_tutorial_kudo_new").click
    end
end

Then /^I try to complete second onboarding/ do
    for i in 1..5
        step %[I tap on back button of device]
        step %[I wait for 1 sec]
    end
end

Then /^I click Masuk Sebagai Agen/ do
    $driver.find_element(:id, "kudo.mobile.app:id/bt_header_login").click    
end

Then /^I click Mulai Berjualan/ do
    $driver.find_element(:id, "kudo.mobile.app:id/login_bt_next").click    
end

Then /^I enter username "(.*?)"/ do |arg1|
    $driver.find_element(:id, "kudo.mobile.app:id/activity_login_et_username").send_keys("#{arg1}")
end

Then /^I enter password "(.*?)"/ do |arg1|
    $driver.find_element(:id, "kudo.mobile.app:id/login_et_password").send_keys("#{arg1}")
end

Then /^I click Login/ do
    $driver.find_element(:id, "kudo.mobile.app:id/login_button").click 
    step %[I wait for 10 sec]
    step %[I tap on back button of device]
end

Then /^I click search/ do
    $driver.find_element(:id, "kudo.mobile.app:id/iv_topbar_search").click 
end

Then /^I enter kata kunci "(.*?)"/ do |arg1|
    $driver.find_element(:id, "kudo.mobile.app:id/actionbar_et_search_box").send_keys("#{arg1}")
    step %[I tap on back button of device]
    step %[I tap on element having xpath "//android.widget.TextView[@text='#{arg1} dalam ']"]
end

Then /^I click beli/ do
    $driver.find_element(:id, "kudo.mobile.app:id/product_detail_btn_buy").click 
end

Then /^I open product/ do
    $driver.find_element(:id, "kudo.mobile.app:id/item_product_list_image_iv").click 
end

Then /^I check product name with id "([^\"]*)" contains "(.*?)"/ do |arg1,arg2|
step %[element having id "#{arg1}" should have partial text as "#{arg2}"]
end

Then /^I scroll down/ do
    step %[I swipe element having id "kudo.mobile.app:id/item_product_list_image_iv" to up]
end

Then /^I click Jangan tampilkan pesan ini lagi/ do
    $driver.find_element(:id, "kudo.mobile.app:id/multiple_choice_cb_checkbox").click
    $driver.find_element(:id, "android:id/button1").click
end

Then /^I go to product listing/ do
    step %[I tap on back button of device]
    step %[I tap on back button of device]
    step %[I tap on back button of device]
end

Then /^I check the number of items in cart with id "([^\"]*)" should be "(.*?)"/ do |arg1,arg2|
    step %[element having id "#{arg1}" should have text as "#{arg2}"]
end

Then /^I tap on "(.*?)"/ do |arg1|
    step %[I tap on element having xpath "//android.widget.TextView[@text='#{arg1}']"]
end

Then /^I select departure from "(.*?)"/ do |arg1|
    step %[I tap on element having id "kudo.mobile.app:id/ticket_tv_code_from"]
    step %[I tap on element having xpath "//android.widget.TextView[@text='#{arg1}']"]
end

Then /^I select arrival at "(.*?)"/ do |arg1|
    step %[I tap on element having id "kudo.mobile.app:id/ticket_tv_code_to"]
    step %[I tap on element having xpath "//android.widget.TextView[@text='#{arg1}']"]
end

Then /^I select date at "(.*?)"/ do |arg1|
    step %[I tap on element having id "kudo.mobile.app:id/ticket_tv_number_date_from"]
    step %[I tap on element having xpath "//android.widget.TextView[@text='#{arg1}']"]
    step %[I tap on element having id "kudo.mobile.app:id/btn_pick"]
end

Then /^I find flight ticket/ do
    step %[I tap on element having id "kudo.mobile.app:id/flight_btn_search_ticket"]
end

Then /^I tap Terapkan/ do
    step %[I tap on element having id "kudo.mobile.app:id/btn_apply"]
end

Then /^I sort based on earliest time/ do
    step %[I tap on element having id "kudo.mobile.app:id/rb_earliest_departure"]
end

Then /^I select flight/ do
    step %[I tap on element having id "kudo.mobile.app:id/schedule_iv_icon_airline"]
end

Then /^I tap Konfirmasi Tiket/ do
    step %[I tap on element having id "kudo.mobile.app:id/btn_apply"]
end

Then /^I enter Nama Lengkap "(.*?)"/ do |arg1|
    $driver.find_element(:id, "kudo.mobile.app:id/identity_et_name").send_keys("#{arg1}")
end
    
Then /^I enter Nomor Handphone "(.*?)"/ do |arg1|
    $driver.find_element(:id, "kudo.mobile.app:id/identity_et_number").send_keys("#{arg1}")
end
    
Then /^I enter Alamat Email "(.*?)"/ do |arg1|
    $driver.find_element(:id, "kudo.mobile.app:id/identity_et_address").send_keys("#{arg1}")
end
    
Then /^I tambahkan data ke penumpang 1/ do
    step %[I tap on element having id "kudo.mobile.app:id/identity_cb_add_one_passenger"]
end
    
Then /^I isi gelar "(.*?)"/ do |arg1|
    step %[I tap on element having id "kudo.mobile.app:id/identity_tv_title"]
    step %[I tap on element having xpath "//android.widget.TextView[@text='#{arg1}']"]
end

Then /^I isi tanggal lahir default/ do
    step %[I tap on element having id "kudo.mobile.app:id/identity_tv_dob"]
   step %[I tap on element having id "kudo.mobile.app:id/spinner_datepicker_btn_choose"]
end

Then /^I Pesan Tiket/ do
    step %[I tap on element having id "kudo.mobile.app:id/identity_btn_order"]
    step %[I tap on element having id "android:id/button1"]
end

Then /^I Konfirmasi Bayar/ do
    step %[I tap on element having id "kudo.mobile.app:id/detail_transaction_bt_confirm"]
end

Then /^I Bayar/ do
    step %[I tap on element having id "kudo.mobile.app:id/payment_option_bt_confirm"]
end

Then /^I try to complete onboarding tutorial/ do
    for i in 1..4
  $driver.find_element(:id, "kudo.mobile.app:id/btn_next_kudo_tutorial").click
    end
end

Then /^I pilih kota "(.*?)"/ do |arg1|
    step %[I tap on element having id "kudo.mobile.app:id/grab_start_registration_et_city"]
    step %[I tap on element having xpath "//android.widget.TextView[@text='#{arg1}']"]
end

Then /^I isi nama depan "(.*?)"/ do |arg1|
    $driver.find_element(:id, "kudo.mobile.app:id/grab_start_registration_et_first_name").send_keys("#{arg1}")
end
    
Then /^I isi nama belakang "(.*?)"/ do |arg1|
    $driver.find_element(:id, "kudo.mobile.app:id/grab_start_registration_et_last_name").send_keys("#{arg1}")
end
    
Then /^I isi nomor handphone "(.*?)"/ do |arg1|
    $driver.find_element(:id, "kudo.mobile.app:id/grab_start_registration_et_phone_number").send_keys("#{arg1}")
end

Then /^I isi email "(.*?)"/ do |arg1|
    $driver.find_element(:id, "kudo.mobile.app:id/grab_start_registration_et_email").send_keys("#{arg1}")
end

Then /^I tekan Undang/ do
    step %[I tap on element having id "kudo.mobile.app:id/grab_start_registration_btn_invite"]
end

Then /^I kirim SMS OTP/ do
    step %[I tap on element having id "kudo.mobile.app:id/item_incomplete_iv_image"]
end

Then /^I go to my launcer home/ do
    $driver.press_keycode(3)
end

Then /^I go to my SMS/ do
    step %[I tap on element having xpath "//android.widget.TextView[@text='Messaging']"]
end

Then /^I open my SMS/ do
    step %[I tap on element having class "android.view.View"]
    $otp = $driver.find_element(:id, "com.android.mms:id/text_view").text[-4,4]
    p $otp
end

Then /^I input OTP/ do
    $driver.find_element(:id, "kudo.mobile.app:id/grab_otp_verification_code_et").send_keys("#{$otp}")
end

Then /^I tekan Lanjut/ do
    step %[I tap on element having id "kudo.mobile.app:id/grab_otp_verify_button"]
end

Then /^I Allow permission/ do
    step %[I tap on element having id "com.android.packageinstaller:id/permission_allow_button"]
    step %[I tap on element having id "com.android.packageinstaller:id/permission_allow_button"]
end

Then /^I upload profpic/ do
    step %[I tap on element having id "kudo.mobile.app:id/grab_document_field_photo_upload_btn"]
    step %[I tap on element having xpath "//android.widget.TextView[@text='Kamera']"]
    step %[I tap on element having id "com.lge.camera:id/shutter_large_comp"]
    step %[I tap on element having id "com.lge.camera:id/done_button"]
    step %[I wait for 5 sec]
    step %[I tap on element having id "kudo.mobile.app:id/grab_document_detail_save_btn"]
end

Then /^I lengkapi KTP/ do
    step %[I tap on element having xpath "//android.widget.EditText[1]"]
    step %[I tap on element having id "kudo.mobile.app:id/spinner_datepicker_btn_choose"]
    step %[I tap on element having xpath "//TextInputLayout[@text='Tanggal KTP diterbitkan']/android.widget.FrameLayout/android.widget.EditText"]
    step %[I tap on element having id "kudo.mobile.app:id/spinner_datepicker_btn_choose"]
    step %[I tap on element having id "kudo.mobile.app:id/grab_document_field_photo_upload_btn"]
    step %[I tap on element having xpath "//android.widget.TextView[@text='Kamera']"]
    step %[I tap on element having id "com.lge.camera:id/shutter_large_comp"]
    step %[I tap on element having id "com.lge.camera:id/done_button"]
    step %[I wait for 5 sec]
    step %[I tap on element having id "kudo.mobile.app:id/grab_document_detail_save_btn"]
end

Then /^I lengkapi SIM/ do
$driver.find_element(:xpath, "//TextInputLayout[@text='No. SIM']/android.widget.FrameLayout/android.widget.EditText").send_keys("123456789012345678")

    step %[I tap on element having xpath "//TextInputLayout[@text='Jenis SIM']/android.widget.FrameLayout/android.widget.EditText"]
    step %[I tap on element having xpath "//android.widget.TextView[@text='C']"]

    step %[I tap on element having xpath "//TextInputLayout[@text='Berlaku sampai dengan']/android.widget.FrameLayout/android.widget.EditText"]
    step %[I tap on element having id "kudo.mobile.app:id/spinner_datepicker_btn_choose"]
   
    step %[I tap on element having id "kudo.mobile.app:id/grab_document_field_photo_upload_btn"]
     step %[I tap on element having xpath "//android.widget.TextView[@text='Kamera']"]
step %[I tap on element having id "com.lge.camera:id/shutter_large_comp"]
step %[I tap on element having id "com.lge.camera:id/done_button"]
step %[I wait for 5 sec]
step %[I tap on element having id "kudo.mobile.app:id/grab_document_detail_save_btn"]
end

Then /^I lengkapi STNK/ do
    $driver.find_element(:xpath, "//TextInputLayout[@text='Nomor Kendaraan']/android.widget.FrameLayout/android.widget.EditText").send_keys("B 6699 UUS")
    $driver.find_element(:xpath, "//TextInputLayout[@text='Merek Kendaraan']/android.widget.FrameLayout/android.widget.EditText").send_keys("Yamaha")
    $driver.find_element(:xpath, "//TextInputLayout[@text='Model Kendaraan']/android.widget.FrameLayout/android.widget.EditText").send_keys("MT 25")
   
    step %[I tap on element having id "kudo.mobile.app:id/grab_document_field_photo_upload_btn"]
    step %[I tap on element having xpath "//android.widget.TextView[@text='Kamera']"]
    step %[I tap on element having id "com.lge.camera:id/shutter_large_comp"]
    step %[I tap on element having id "com.lge.camera:id/done_button"]
    step %[I wait for 5 sec]
    step %[I tap on element having id "kudo.mobile.app:id/grab_document_detail_save_btn"]
end

Then /^I lengkapi SKCK/ do
    step %[I tap on element having id "kudo.mobile.app:id/grab_document_field_photo_upload_btn"]
    step %[I tap on element having xpath "//android.widget.TextView[@text='Kamera']"]
    step %[I tap on element having id "com.lge.camera:id/shutter_large_comp"]
    step %[I tap on element having id "com.lge.camera:id/done_button"]
    step %[I wait for 5 sec]
    step %[I tap on element having id "kudo.mobile.app:id/grab_document_detail_save_btn"]
end

Then /^I lengkapi Pernyataan/ do
    step %[I tap on element having xpath "//android.widget.TextView[@text='Saya tidak pernah melakukan tindak pidana dan atau kriminal.']/preceding-sibling::android.widget.CheckBox"]
    step %[I tap on element having xpath "//android.widget.TextView[@text='Saya tidak sedang terlibat dalam proses pengadilan.']/preceding-sibling::android.widget.CheckBox"]
    step %[I tap on element having xpath "//android.widget.TextView[@text='Saya tidak mempunyai catatan medis yang menyatakan bahwa saya tidak sehat untuk berkendara aman.']/preceding-sibling::android.widget.CheckBox"]
    step %[I tap on element having xpath "//android.widget.TextView[@text='Saya telah membaca dan memahami Syarat & Ketentuan berlaku serta dengan kode etik pengemudi GrabCar atau GrabBike']/preceding-sibling::android.widget.CheckBox"]
end


# Do Not Remove This File
# Add your custom steps here
# $driver is instance of webdriver use this instance to write your custom code