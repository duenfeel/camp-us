package kr.campus.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.campus.domain.AuthVO;
import kr.campus.mapper.MemberAuthMapper;
import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;
@Log4j
@Service
@AllArgsConstructor
public class MemberAuthServiceImpl implements MemberAuthService{
	@Setter (onMethod_ =@Autowired)
	private MemberAuthMapper mapper;
	
	@Override
	public void add(AuthVO vo) {
		// TODO Auto-generated method stub
		mapper.add(vo);
	}
	@Override
	public int delete(AuthVO vo) {
		// TODO Auto-generated method stub
		return mapper.delete(vo);
	}
	

}
