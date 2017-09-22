Dado(/^que esteja logado no Site ORANGEHRM como admin$/) do
    visit 'http://opensource.demo.orangehrmlive.com/'
    fill_in("txtUsername", :with=> 'admin')
    fill_in('txtPassword', :with=> 'admin')
    find(:xpath,'//input[@id="btnLogin"]').click
  end
  
  Dado(/^que eu esteja na pagina de Cadastro de Empregado$/) do
    find(:xpath,'//*[@id="menu_pim_viewPimModule"]').click
    find(:xpath,'//*[@id="menu_pim_addEmployee"]').click
  end
  
  Quando(/^inserir informacoes necessarias para cadastrar novo funcionario$/) do
    fill_in('firstName', :with=>'Rafael')
    fill_in('lastName', :with=>'Duarte')
    fill_in('employeeId', :with=>'1503')
    check('chkLogin')   
    fill_in('user_name', :with=>'rafapedroso6')
    fill_in('user_password', :with=>'12345678')
    fill_in('re_password', :with=>'12345678')
    select('Enabled', :from=>'status')
    find(:xpath, '//*[@id="btnSave"]').click
  
  end
  
  Então(/^Usuario sera cadastrado com sucesso$/) do
    assert_text('Rafael Duarte')
  end



  