class Vehicle{
	PVector location;//位置ベクトル
	PVector veloscity;//速度ベクトル
	PVector acceleration;//加速度ベクトル

	float r;//サイズ用の変換変数
	float maxspeed;//最高速度
    float steer;//最大力	

	desired.mult(maxspeed);//maxスピードで目標へ向かうための速度を計算
	PVector steer = PVector.sub(desired, velocity);//レイノルズの操舵力の公式
	aplplyForce(steer);//作成した物理モデルを使用し、オブジェクトの加速度に力を適用

	Vehicle(float x, float y){
      acceleration = new PVector(0, 0);
	  velocity = new PVector(0, 0);
	  location = new PVector(x, y);
	  r = 3.0;
	  
	}
}

