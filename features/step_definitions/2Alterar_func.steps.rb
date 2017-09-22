 
  Dado(/^que esteja na pagina de Lista de Empregados$/) do
    find(:xpath,'//*[@id="menu_pim_viewPimModule"]').click
    find(:xpath,'//*[@id="menu_pim_viewEmployeeList"]').click
  end
  
Quando(/^buscar funcionario cadastrado$/) do
    fill_in('empsearch_id', :with=>'1502')
    click_button('searchBtn')
    
end

Quando(/^Editar suas informacoes$/)do
    click_link('1502')
    click_button('btnSave')
    choose('personal_optGender_1')
    fill_in('personal_DOB', :with=>'1994-01-24')
    select('Brazilian', :from=>'personal[cmbNation]')
    click_button('btnSave')
end

Entao(/^Funcionario alterado com sucesso$/) do
    
    assert_text('Successfully Saved')
    
  end