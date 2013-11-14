PVector returnHand(int userId,int jointType){
PVector jointPos=new PVector();
float confidence = context.getJointPositionSkeleton(userId, jointType, jointPos);
return jointPos;
}
