 <div id="content_3" class="content"> 
       <?php
       $queryque = mysqli_query($con,"SELECT * FROM question JOIN subject ON question.subject_id = subject.sub_id WHERE subject.sub_name = '$subject3'");
       $countque = mysqli_num_rows($queryque);
       $fetchque = mysqli_fetch_array($queryque);
       $subname =  $fetchque['sub_name'];
       $subid =  $fetchque['subject_id'];

      // $queryque2 = mysqli_query($con,"SELECT * FROM ")
       ?>
       <center><span ><b><?php echo ucfirst($fetchque['sub_name']); ?></b></span></center>
       <?php
       $cnt = 1;
       $queryqueno = mysqli_query($con,"SELECT * FROM question WHERE subject_id = '$subid' order by rand() LIMIT 20");
       $countqueno = mysqli_num_rows($queryqueno);
       while ($fetchqueno = mysqli_fetch_array($queryqueno)) {
            ?>

       <p><span style="float: left;">Question <?php echo $cnt++; ?>:</span>   
       <span style="float: left; "><?php echo $fetchqueno['que_desc']; ?></span><br><br>


       <span style="float: ;">A &nbsp; <input type="radio" name="subj3<?php echo $fetchqueno['que_id']; ?>" value="<?php echo $fetchqueno['option1']; ?>" ><?php echo $fetchqueno['option1']; 
            
        ?></span><br>
       <span style="float: ;">B &nbsp; <input type="radio" name="subj3<?php echo $fetchqueno['que_id']; ?>" value="<?php echo $fetchqueno['option2']; ?>"><?php echo $fetchqueno['option2']; ?></span><br>
       <span style="float: ;">C &nbsp; <input type="radio" name="subj3<?php echo $fetchqueno['que_id']; ?>" value="<?php echo $fetchqueno['option3']; ?>"><?php echo $fetchqueno['option3']; ?></span><br>
       <span style="float: ;">D &nbsp; <input type="radio" name="subj3<?php echo $fetchqueno['que_id']; ?>" value="<?php echo $fetchqueno['option4']; ?>" ><?php echo $fetchqueno['option4']; ?></span><br><hr>
       </p>
       <input type="hidden" name="" value="<?php echo $fetchqueno['tru_ans']; ?>" disabled>
       <input type="hidden" name="<?php echo $fetchqueno['que_id']; ?>" value="<?php echo $fetchqueno['que_id']; ?>">
<?php
       }
       ?>
       </div>