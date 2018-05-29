package kr.hkit.minimall.admin.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import egovframework.rte.psl.dataaccess.mapper.Mapper;

@Mapper
public interface AdminMapper {
	public int insertProduct(
			@Param("name") String name, 
			@Param("price") long price, 
			@Param("description") String description, 
			@Param("image") String image);
	
	public List<ProductVO> selectProductVOs();
}
