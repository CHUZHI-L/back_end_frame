#include"internal.h"
#include"const.h"

muyi::error* Login(string id, string password, int type) {
	auto userData = dataBase::instence()->GetUserByIDAndType(id,type);
	if (userData.Err != nullptr) {
		//todo ��ӡ��־
		return userData.Err;
	}
	if (userData.Data.password != password) {
		return muyi::error::NewError(WrongPassword);
	}
	return nullptr;
}

muyi::error* Regester(string id,string name, string password, int type) {
	auto err = dataBase::instence()->CreateUser(id, name, password, type);
	if (err != nullptr) {
		//todo ��ӡ��־
		return err;
	}
	return nullptr;
}