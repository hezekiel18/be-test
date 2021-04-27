import java.util.List;

public class DefenderArcade {
  public int countArcades(List<String> times) {
    // Set the machines counter
    int machines = 1;
    int temp = 0;
    // System.out.println(times.size());

    // Loop through each pair Time (Start Time & Finish Time)
    for (int i = 0; i < times.size(); i++) {
      // if this is the last item break the loop
      if (i == times.size() - 1) {
        break;
      }
      // Split & Get the Start Time & Finish Time(Current and Next) from List Times
      var currStartTime = Integer.valueOf(times.get(i).split(" ")[0]);
      var currFinishTime = Integer.valueOf(times.get(i).split(" ")[1]);

      var nextStartTime = Integer.valueOf(times.get(i + 1).split(" ")[0]);
      var nextFinishTime = Integer.valueOf(times.get(i + 1).split(" ")[1]);

      // Check IF Next Start Time longer than Current Start Time then check when
      // Current Finish Time
      if (nextStartTime > currStartTime) {
        // IF Current Finish Time longer than Next Start Time then machine is occupied
        if (currFinishTime > nextStartTime) {
          // Check Is there any Machine available if false then add another machine
          if (temp == 0) {
            machines += 1;
            temp = currFinishTime;
          } else {
            // Check IF another machine is available, if false then add another machine
            if (temp > nextStartTime) {
              machines += 1;
            } else {
              temp = nextFinishTime;
            }

          }

        }

      }

    }
    // Return number of machines needed
    return machines;
  }
}
