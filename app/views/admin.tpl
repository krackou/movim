<?php $this->widget('Search');?>
<?php $this->widget('VisioLink');?>
<?php $this->widget('Notification');?>
<?php $this->widget('Toast');?>
<?php $this->widget('Onboarding');?>
<?php $this->widget('Notifications');?>

<nav class="color dark">
    <?php $this->widget('Presence');?>
    <?php $this->widget('Navigation');?>
</nav>

<?php $this->widget('BottomNavigation');?>

<main>
    <div>
        <header class="on_desktop">
            <ul class="list middle">
                <li>
                    <span id="menu" class="primary icon gray" >
                        <i class="material-icons">manage_accounts</i>
                    </span>
                    <div>
                        <p><?php echo __('page.administration'); ?></p>
                    </div>
                </li>
            </ul>
        </header>

        <?php if (\App\User::me()->admin) { ?>
            <?php $this->widget('Tabs');?>
            <ul class="tabs" id="navtabs"></ul>

            <?php $this->widget('AdminMain');?>
            <?php $this->widget('AdminSessions');?>
            <?php $this->widget('AdminReported');?>
        <?php } ?>
    </div>
</main>
