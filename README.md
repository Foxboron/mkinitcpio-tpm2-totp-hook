mkinitcpio-tpm2-totp-hook
=========================

tpm2-totp hooks for mkinitcpio.


# Take ownership (Empty owner pass as that is what totp supports currently)
`tpm2_takeownership -o "" -e "safeandsecureendorepassword" -l "safeandsecurelockoutpassword"`


# Create primary object
`tpm2_createprimary -C primary.ctx -H o -g sha1 -G rsa -P "" -V`


# Make sure it's not evicted
`tpm2_evictcontrol -A o -c primary.ctx -H 0x81000001`

tpm2_totp should work after this
