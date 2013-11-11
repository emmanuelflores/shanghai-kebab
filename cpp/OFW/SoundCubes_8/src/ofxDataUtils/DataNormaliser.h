/*
 *  DataNormaliser.h
 *  openFrameworks
 *
 *  Created by lukasz karluk on 13/06/09.
 *
 */

#define		DEFAULT_BUFFER_SIZE		100

class DataNormaliser
{

public :
	
	DataNormaliser();
	~DataNormaliser();
	
	void init();
	void setBufferSize( int size );
	float getNormalisedValue( float value );
	
private :

	void checkValueBounds();
	
	int		valuesSize;
	int		valuesIndex;
	float	*values;
	float	valueMin;
	float	valueMax;
	bool	isFull;
};