<?php include_once 'db_info.php'; ?>

<html>

<head>
    <script type="module" src="https://cdn.jsdelivr.net/npm/@ionic/core/dist/ionic/ionic.esm.js"></script>
    <script nomodule src="https://cdn.jsdelivr.net/npm/@ionic/core/dist/ionic/ionic.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@ionic/core/css/ionic.bundle.css" />
</head>

<body style="background-color: lightgrey;">
    <ion-card>
    <?php $query = "SELECT * FROM resultpage WHERE id =1";
    $result = $conn->query($query);
    if ($result->num_rows == 1) :
    while ($row = $result->fetch_assoc()) :?>
        <ion-item>
            <img src="<?php echo $row['resultlogo']; ?>" width="200" height="100">
        </ion-item>

        <ion-card-header>
            <ion-card-subtitle><?php echo $row['toptext']; ?></ion-card-subtitle>
            <ion-card-title>Test Corona</ion-card-title>
        </ion-card-header>
        <?php endwhile; ?>
        <?php endif; ?>


        <h3 style="text-align: center;"><span style="text-decoration: underline;">Report validation System</span></h3>


        <?php
            // $sql="SELECT documents.doc_name,documents.id FROM qrusers";

            $id = $_GET['id'];

            $sql = "SELECT qrusers.id,qrusers.name,qrusers.age,qrusers.gender,qrusers.mobile,qrusers.identification,qrusers.collectiontime,qrusers.resultime,qrusers.testnameresult FROM qrusers WHERE id='$id'";

            $result = $conn->query($sql);
            if ($result->num_rows > 0) {
                while ($row = $result->fetch_assoc()) {

            ?>
        <ion-card-content>
            <ion-item>
                <ion-label><b>Name : </b> <span style="text-transform: uppercase;"><?php echo $row['name']; ?></span></ion-label>
            </ion-item>

            <ion-item>
                <ion-label><b>Age : </b> <?php echo $row['age']; ?></ion-label>
            </ion-item>

            <ion-item>
                <ion-label><b>Gender : </b> <?php echo $row['gender']; ?></ion-label>
            </ion-item>

            <ion-item>
                <ion-label><b>Mobile : </b> <?php echo $row['mobile']; ?> </ion-label>
            </ion-item>

            <ion-item>
                <ion-label><b>Identification ID : </b> <span style="text-transform: uppercase;"><?php echo $row['identification']; ?></span></ion-label>
            </ion-item>

            <ion-item>
                <ion-label><b>Sample Collection time : <span style="text-transform: uppercase;"></b> <?php echo $row['collectiontime']; ?></span></ion-label>
            </ion-item>

            <ion-item>
                <ion-label><b>Result time : </b> <span style="text-transform: uppercase;"><?php echo $row['resultime']; ?></span></ion-label>
            </ion-item>

            <ion-item>
                <ion-label><b>Test Name / Result : </b> <?php echo $row['testnameresult']; ?></ion-label>
            </ion-item>
        </ion-card-content>
    </ion-card>

    <?php
        }
    } ?>


    <br>
    <?php $query = "SELECT * FROM resultpage WHERE id =1";
    $result = $conn->query($query);
    if ($result->num_rows == 1) :
    while ($row = $result->fetch_assoc()) :?>
    <p style="text-align: center;"><strong>Thank you for choosing <?php echo $row['thankstext']; ?> </strong></p>
    <p style="text-align: center;">Copyright&nbsp;&copy; <?php echo $row['copyrightyear']; ?>, <?php echo $row['copyright']; ?><br />All Rights reserved&nbsp;</p>
    <?php endwhile; ?>
    <?php endif; ?>

</body>



    </html>