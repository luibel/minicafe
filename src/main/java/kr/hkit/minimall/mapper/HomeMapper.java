package kr.hkit.minimall.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import egovframework.rte.psl.dataaccess.mapper.Mapper;

@Mapper
public interface HomeMapper {
	
	public int selectUsersCount(String username);
	
	public int insertUser(
			@Param("username") String username, 
			@Param("password") String password, 
			@Param("name") String name, 
			@Param("email") String email, 
			@Param("phone") String phone, 
			@Param("address") String address);
	
	public List<UserVO> selectUserVOs();
	public int insertUserVO(UserVO userVO);	
	public int updateUserVO(UserVO userVO);
	public int updateUser(@Param("id")String id, @Param("email")String email);
	public int deleteUserVO(UserVO userVO);
	public int deleteUser(int idx);
}
