Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, '7iHQShm7mIMfzTeLXIEA', 'weoyYf9vWDKRJEGsIfsUaCXRbZegxHj80oIFCFXMawA'
  provider :facebook, '156284807785608', '34fc559abc6c4ec51209c6df440ff500', :scope => 'email'
end