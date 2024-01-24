describe('Pilih Produk', () => {
    it('Tambah Produk', () => {
      cy.visit('https://magento.softwaretestingboard.com/')

      cy.contains('Women').click()
      cy.contains('Radiant Tee').click()
      cy.contains('XS').click()
      cy.get('#option-label-color-93-item-56').click()
      cy.get('#product-addtocart-button').click()
      cy.get('#maincontent').should('contain', 'You added Radiant Tee to your')
    })
  })