import java.util.Iterator;

class pSystem{

  PVector origin;
  ArrayList<Particle> particles;
  
  pSystem(PVector position){
    origin = position;
    particles = new ArrayList<Particle>();
  }
  
  void addParticle(){
    particles.add(new Particle(origin));
  }
  
  void run(){
    Iterator<Particle> it = particles.iterator();
    while (it.hasNext()){
      Particle p = it.next();
      p.run();
      if (p.isDead()){
        it.remove();
      }
    }
  }
  
  
  
}
