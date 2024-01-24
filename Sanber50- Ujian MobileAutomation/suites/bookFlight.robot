*** Settings ***
Resource        ../pageObject/bookFlight/bookFlight.robot
Resource        ../pageObject/base.robot

** Keywords
## Membuka Flight App
## Melakukan Sign in
## Menekan button Book
## Pilih penerbangan 
## Pilih Flight Asal Kota
## Pilih Flight Tujuan Kota
## Pilih Class 
## Pilih Tanggal Keberangkatan
## Pilih Tanggal Pulang
## Pilih Option Flight
## Menekan button Book
## Pilih harga tiket
## Menekan button Confirm

** Test Cases **
Verify Login Successfully
    Open Flight Application
    homePage.Verify Homepage Appears
    signIn.Click SignIn
    signIn.Verify Loginpage Appears
    signIn.Input Username
    signIn.Input Password
    signIn.Click Login

Verify Book Flight Successfully
    bookFlight.Click Button Book
    bookFlight.Verify Book Flight Page Appears
    bookFlight.Choose Option on Spinner
    bookFlight.Click Date Picker
    bookFlight.Choose Flight Option
    bookFlight.Click Book Flight
    bookFlight.Verify Reservation Number Appears

