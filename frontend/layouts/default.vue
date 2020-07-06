<template>
  <div id="body">
    <div id="body-header">
      <mt-header fixed :title="headerTitle">
        <span slot="left" v-if="selected == 'tab1'">重庆 [
          <el-button @click="dialogVisible = true" type="text">切换城市</el-button>
          ]</span>
      </mt-header>
    </div>


    <div id="tab-item">
      <mt-tab-container v-model="active">
        <mt-tab-container-item id="tab1-container">
          <Nuxt />
        </mt-tab-container-item>
        <mt-tab-container-item id="tab2-container">
          <Nuxt />
        </mt-tab-container-item>
        <mt-tab-container-item id="tab3-container">
          <Nuxt />
        </mt-tab-container-item>
      </mt-tab-container>
    </div>

    <div id="change-location">
      <el-dialog title="请选择你的服务地址：" :visible.sync="dialogVisible" width="80%">
        <mt-picker :slots="myAddressSlots" @change="onMyAddressChange"></mt-picker>
        <span slot="footer" class="dialog-footer">
          <el-button @click="dialogVisible = false">取 消</el-button>
          <el-button type="primary" @click="dialogVisible = false">确 定</el-button>
        </span>
      </el-dialog>
    </div>


    <div id="footer-tabbar">
      <mt-tabbar v-model="selected">
        <mt-tab-item id="tab1">
          <i slot="icon" class="iconfont icon-1"></i>
          首页
        </mt-tab-item>
        <mt-tab-item id="tab2">
          <i slot="icon" class="iconfont icon-leimupinleifenleileibie"></i>
          分类
        </mt-tab-item>
        <mt-tab-item id="tab3">
          <i slot="icon" class="iconfont icon-yuyue"></i>
          预约
        </mt-tab-item>
        <mt-tab-item id="tab4">
          <i slot="icon" class="iconfont icon-wode"></i>
          我的
        </mt-tab-item>
      </mt-tabbar>
    </div>
  </div>
</template>

<style>
  #body-header .mint-header {
    z-index: 9999;
  }

  #body-header .el-button--text {
    color: #ffffff;
  }

  #change-location .el-dialog__header,
  #change-location .el-dialog__footer {
    padding: 10px;
  }

  #change-location .el-dialog__headerbtn {
    top: 15px;
    right: 10px;
  }

  .el-card {
    margin: 5px;
  }

  .el-card__header {
    padding: 5px;
  }

  .el-card__body {
    padding: 10px;
  }

  body {
    overflow-y: hidden;
    margin: 0px;
  }

  #footer-tabbar .iconfont {
    font-size: 24px;
  }

  #body {
    min-height: 100%;
  }

  #tab-item {
    background-color: #eaedef;
    padding-top: 40px;
    max-height: calc(100vh - 40px - 55px);
    padding-bottom: 55px;
    overflow-y: auto;
    overflow-x: hidden;
  }

  .container {
    margin: 0px;
  }
</style>

<script>
  import "@/assets/iconfont/iconfont.css";

  import myaddress from '@/static/address3.json' //引入省市区数据

  export default {
    data() {
      return {
        selected: null,
        active: "tab1-container",
        headerTitle: "家政服务网首页",
        dialogVisible: false,
        myAddressSlots: [{
            flex: 1,
            defaultIndex: 1,
            values: Object.keys(myaddress), //省份数组
            className: 'slot1',
            textAlign: 'center'
          }, {
            divider: true,
            content: '-',
            className: 'slot2'
          }, {
            flex: 1,
            values: [],
            className: 'slot3',
            textAlign: 'center'
          },
          {
            divider: true,
            content: '-',
            className: 'slot4'
          },
          {
            flex: 1,
            values: [],
            className: 'slot5',
            textAlign: 'center'
          }
        ],
        myAddressProvince: '省',
        myAddressCity: '市',
        myAddresscounty: '区/县',
      }
    },
    created() {
      this.selected = this.$route.path == '/' ? 'tab1' : this.$route.path == '/category' ? 'tab2' : this.$route.path ==
        '/order' ? 'tab3' : 'tab4';
    },
    watch: {
      selected: function(o, n) {
        this.active = this.selected + "-container";
        this.headerTitle = this.selected == 'tab1' ? '家政服务网首页' : this.selected == 'tab2' ? '查看分类' : this.selected ==
          'tab3' ? '我的预约' : '用户中心';
        this.$router.push(this.selected == 'tab1' ? '/' : this.selected == 'tab2' ? '/category' : this.selected ==
          'tab3' ? '/order' : '/user')
      }
    },
    methods: {
      onMyAddressChange(picker, values) {
        if (myaddress[values[0]]) { //这个判断类似于v-if的效果（可以不加，但是vue会报错，很不爽）
          picker.setSlotValues(1, Object.keys(myaddress[values[0]])); // Object.keys()会返回一个数组，当前省的数组
          picker.setSlotValues(2, myaddress[values[0]][values[1]]); // 区/县数据就是一个数组
          this.myAddressProvince = values[0];
          this.myAddressCity = values[1];
          this.myAddresscounty = values[2];
        }
      },
    },
    mounted() {
      this.$nextTick(() => { //vue里面全部加载好了再执行的函数 （类似于setTimeout）
        this.myAddressSlots[0].defaultIndex = 0
        // 这里的值需要和 data里面 defaultIndex 的值不一样才能够初始化
        //因为我没有看过源码（我猜测是因为数据没有改变，不会触发更新）
      });
    }
  }
</script>
