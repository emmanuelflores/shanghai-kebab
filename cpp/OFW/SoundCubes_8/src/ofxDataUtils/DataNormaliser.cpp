/*
 *  DataNormaliser.cpp
 *  openFrameworks
 *
 *  Created by lukasz karluk on 13/06/09.
 *
 */

#include "DataNormaliser.h"

DataNormaliser :: DataNormaliser()
{
	init();
}

DataNormaliser :: ~DataNormaliser()
{
	
}


void DataNormaliser :: init()
{
	valuesIndex	= 0;
	values		= new float[ DEFAULT_BUFFER_SIZE ];
	valueMin	= 0;
	valueMax	= 0;
	
	isFull		= false;
	
	setBufferSize( DEFAULT_BUFFER_SIZE );
}

void DataNormaliser :: setBufferSize( int size )
{
	valuesSize = size;
}

float DataNormaliser :: getNormalisedValue( float value )
{
	values[ valuesIndex ] = value;

	checkValueBounds();
	
	float range			= valueMax - valueMin;
	float scaledValue	= 0;
	if( range != 0 )
	{
		scaledValue = ( value - valueMin ) / range;
	}
	
	if( ++valuesIndex > valuesSize - 1 )
	{
		valuesIndex	= 0;
		isFull		= true;
	}
	
	return scaledValue;
}

void DataNormaliser :: checkValueBounds ()
{
	float valueMinTemp = 0;
	float valueMaxTemp = 0;
	
	if( isFull )
	{
		for( int i=0; i<valuesSize; i++ )
		{
			int j = valuesIndex - i;
			if( j < 0 )
			{
				j = valuesSize + j;
			}
			
			float valueCurr = values[ j ];
			
			if( i == 0 )
			{
				valueMinTemp = valueCurr;
				valueMaxTemp = valueCurr;
			}
			else
			{
				if( valueCurr < valueMinTemp )
				{
					valueMinTemp = valueCurr;
				}
				
				if( valueCurr > valueMaxTemp )
				{
					valueMaxTemp = valueCurr;
				}
			}
		}
	}
	else
	{
		for( int i=0; i<=valuesIndex; i++ )
		{
			int j = valuesIndex - i;
			
			float valueCurr = values[ j ];
			
			if( i == 0 )
			{
				valueMinTemp = valueCurr;
				valueMaxTemp = valueCurr;
			}
			else
			{
				if( valueCurr < valueMinTemp )
				{
					valueMinTemp = valueCurr;
				}
				
				if( valueCurr > valueMaxTemp )
				{
					valueMaxTemp = valueCurr;
				}
			}
		}
	}
	
	valueMin = valueMinTemp;
	valueMax = valueMaxTemp;
}
