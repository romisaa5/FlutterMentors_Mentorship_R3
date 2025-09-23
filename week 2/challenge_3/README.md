# Challenge 3: Advanced Animation Chain 

## Overview
This challenge implements a **loading animation** using Flutter's `AnimationController` with multiple `Tween` animations.  
The animation consists of **3 dots** that scale and fade **in sequence**, creating a smooth and continuous loading effect.

---

## Requirements
- Use **AnimationController** with proper disposal.
- Create **sequential animations** for 3 dots.
- Include both **scale** and **opacity** animations.
- Loop the animation continuously.
- Use proper **curves** for smooth transitions.

---

## How It Works
1. **AnimationController**  
   - Controls the timing and duration of the animation.  
   - Loops infinitely using `.repeat()`.

2. **Multiple Tween Animations**  
   - Each dot has its own **scale** and **opacity** animation.  
   - Uses `Interval` to stagger the animations, so dots animate one after another.

3. **Scale + Fade Transitions**  
   - `ScaleTransition` makes the dots grow and shrink.  
   - `FadeTransition` controls visibility for a smooth fade effect.  

4. **UI Structure**  
   - A `Row` with 3 circular dots.  
   - Each dot wrapped with its own scale + opacity transitions.

---

## Animation Flow
- **Dot 1** starts scaling and fading first.  
- **Dot 2** follows with a slight delay.  
- **Dot 3** comes last.  
- The sequence loops infinitely to create a smooth **loading indicator**.

---

## Key Takeaways
- `AnimationController` allows precise control over animations.  
- `Interval` is used to split the animation timeline for sequential effects.  
- Always **dispose** the controller to avoid memory leaks.  
- Combining **scale** and **opacity** results in a more dynamic and professional animation.  

---
## 📸 Demo


<div align="center">
  <video src="https://github.com/user-attachments/assets/5b218272-8611-4b4b-b8c2-bc293807b42c" controls width="480" style="border-radius: 12px;"></video>
</div>

---
