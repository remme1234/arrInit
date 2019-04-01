package egovframework.example.array.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.example.array.service.ArrayService;
import egovframework.rte.psl.dataaccess.util.EgovMap;

@Service("arrayService")
public class ArrayServiceImpl implements ArrayService {

	@Resource(name = "arrayMapper")
	ArrayMapper arrayMapper;

	@Override
	public List<EgovMap> selectSeqNoList() throws Exception {
		return arrayMapper.selectSeqNoList();
	}
	

}
